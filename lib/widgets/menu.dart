import 'package:flutter/material.dart';

import 'package:dasar_widget/widgets/text_widget.dart';
import 'package:dasar_widget/widgets/container_widget.dart';
import 'package:dasar_widget/widgets/center_widget.dart';
import 'package:dasar_widget/widgets/sizebox_widget.dart';
import 'package:dasar_widget/widgets/padding_widget.dart';
import 'package:dasar_widget/widgets/icon_widget.dart';
import 'package:dasar_widget/widgets/image_widget.dart';
import 'package:dasar_widget/widgets/card_widget.dart';
import 'package:dasar_widget/widgets/row_widget.dart';
import 'package:dasar_widget/widgets/column_widget.dart';
import 'package:dasar_widget/widgets/stack_widget.dart';
import 'package:dasar_widget/widgets/expanded_widget.dart';
import 'package:dasar_widget/widgets/flexible_widget.dart';
import 'package:dasar_widget/widgets/align_widget.dart';
import 'package:dasar_widget/widgets/wrap_widget.dart';
import 'package:dasar_widget/widgets/listview_widget.dart';
import 'package:dasar_widget/widgets/gridview_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // =========================
              // 1. TEXT WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '1. Text Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 2. CONTAINER WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContainerWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '2. Container Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 3. CENTER WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CenterWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '3. Center Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 4. SIZEBOX WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SizeBoxWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '4. Sizebox Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 5. PADDING WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaddingWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '5. Padding Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 6. ICON WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IconWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '6. Icon Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 7. IMAGE WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '7. Image Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // 8. CARD WIDGET
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '8. Card Widget',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // =========================
              // BANNER LAYOUT WIDGET
              // =========================
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.symmetric(vertical: 12),
                color: Colors.purpleAccent,
                alignment: Alignment.center,
                child: const Text(
                  'LAYOUT WIDGET',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // =========================
              // TOMBOL LAYOUT WIDGET
              // =========================
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 10,
                  right: 10,
                  bottom: 20,
                ),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [

                    // =========================
                    // ROW
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RowWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Row',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // COLUMN
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ColumnWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Column',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // STACK
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StackWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Stack',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // EXPANDED
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExpandedWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Expanded',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // FLEXIBLE
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FlexibleWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Flexible',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // ALIGN
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AlignWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Align',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // WRAP
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WrapWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Wrap',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // LISTVIEW
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ListViewWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'ListView',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // =========================
                    // GRIDVIEW
                    // =========================
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GridViewWidget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'GridView',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}