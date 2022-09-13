import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/post.dart';

class PostItem extends StatelessWidget {
  Post aPost;

  PostItem({Key? key, required this.aPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        margin: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(aPost.title!,
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87)),
                const SizedBox(
                  height: 15,
                ),
                Text(aPost.body!,
                    maxLines: 2,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                        fontSize: 12, color: Color(0xff8a8989))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
