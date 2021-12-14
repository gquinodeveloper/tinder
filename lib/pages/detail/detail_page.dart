import 'package:app_tinder/models/user_model.dart';
import 'package:app_tinder/pages/home/widgets/actions_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  DetailPage({
    required this.user,
  });
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 40.h,
                bottom: 80.w,
              ),
              width: double.infinity,
              height: 550.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("${user.photo}"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${user.name}, ${user.age} ",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/diamante.png"),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "${user.city}",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                top: 25.h,
                left: 20.w,
                right: 20.w,
              ),
              width: double.infinity,
              height: 300.h,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(
                      "${user.grade}",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Colors.black),
                    ),
                    leading: Icon(
                      Icons.school,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(
                      "${user.location}",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Colors.black),
                    ),
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 10.h),
                  Text(
                    "Bio",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "${user.description}",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 270.h,
            left: 0.0,
            right: 0.0,
            child: ActionsCard(),
          ),
        ],
      ),
    );
  }
}
