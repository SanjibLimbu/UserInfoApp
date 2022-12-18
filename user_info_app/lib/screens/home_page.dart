import 'package:flutter/material.dart';
import 'package:user_info_app/model/users.dart';
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

  final _formKey = GlobalKey<FormState>();
  List<Users> _foundUsers = [];

  List<Users> _allUsers = [];

  //calling data form the api
  void getUserData() async {
    _foundUsers = await UsersService.getUsersData();
    _allUsers = List.from(_foundUsers);
    setState(() {});
  }

  //filter function
  void _runUserFilter(String value) {
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
          title: const Text('UserAapp'),
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
                  onChanged: (valueKey) {
                    _runUserFilter(valueKey);
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
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: _foundUsers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Text(_foundUsers[index].name),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
