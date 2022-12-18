import 'package:flutter/material.dart';
import 'package:user_info_app/model/users.dart';
import 'package:user_info_app/screens/profile.dart';
import 'package:user_info_app/services/users_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getUserData();
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Users> _foundUsers = [];

  List<Users> _allUsers = [];

  //calling data form the api
  void getUserData() async {
    _foundUsers = await UsersService.getUsersData();
    _allUsers = List.from(_foundUsers);
    setState(() {});
  }

  //filter function
  void _runUserFilter(String value) async {
    if (value.isEmpty) {
      _foundUsers = _allUsers;
    } else {
      _foundUsers = _allUsers
          .where(
            (user) => user.name.toLowerCase().contains(
                  value.toLowerCase(),
                ),
          )
          .toList();
    }

    setState(() {});
  }

  // item controller
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('UserApp'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              //search field
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: searchController,
                  onChanged: (enteredValue) {
                    _runUserFilter(enteredValue);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field can\'t be empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    // prefixIcon: const Icon(Icons.menu),
                    border: InputBorder.none,

                    contentPadding: const EdgeInsets.fromLTRB(
                      20.0,
                      15.0,
                      20.0,
                      15.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: _foundUsers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                                title: Text(_foundUsers[index].name),
                                subtitle: Text(_foundUsers[index].email),
                                trailing: Image.asset(
                                  'images/view_profile.png',
                                  color: Colors.green,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => ProfilePage(
                                            website: _foundUsers[index].website,
                                            phone: _foundUsers[index].phone,
                                            name: _foundUsers[index].name,
                                            city:
                                                _foundUsers[index].address.city,
                                            street: _foundUsers[index]
                                                .address
                                                .street,
                                            companyName:
                                                _foundUsers[index].company.name,
                                            motto: _foundUsers[index]
                                                .company
                                                .catchPhrase,
                                            userName:
                                                _foundUsers[index].username,
                                            email: _foundUsers[index].email,
                                          )),
                                    ),
                                  );
                                }),
                          );
                        })
                    : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 24),
                      ),
              ),

              // Expanded(
              //   child: ListView(
              //     children: [
              //       ExpansionPanelList(
              //         expansionCallback: (int index, bool isExpanded) {
              //           setState(
              //             () {
              //               _foundUsers[index].isExpanded =
              //                   !_foundUsers[index].isExpanded;
              //             },
              //           );
              //         },
              //         children: _foundUsers.map<ExpansionPanel>(
              //           (Users users) {
              //             return ExpansionPanel(
              //               headerBuilder:
              //                   (BuildContext context, bool isExpaneded) {
              //                 return ListTile(
              //                   title: Text(users.name),
              //                 );
              //               },
              //               body: ListTile(
              //                   title: Text("haha"),
              //                   subtitle: const Text(
              //                       'To delete this panel, tap the trash can icon'),
              //                   onTap: () {}),
              //               isExpanded: users.isExpanded,
              //             );
              //           },
              //         ).toList(),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
