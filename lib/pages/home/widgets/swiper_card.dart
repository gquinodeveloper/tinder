import 'package:app_tinder/models/user_model.dart';
import 'package:app_tinder/pages/detail/detail_page.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwiperCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: users.length,
      itemWidth: 380.w,
      itemHeight: 550.h,
      layout: SwiperLayout.TINDER,
      onTap: (index) {
        print("$index");
        //Navigator.pushNamed(context, "detail", arguments: );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => DetailPage(
              user: users[index],
            ),
          ),
        );
      },
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: 80.h,
          ),
          decoration: BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(
              image: NetworkImage("${users[index].photo}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${users[index].name}, ${users[index].age} ",
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
                "${users[index].city}",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
