import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiket_com_clone/models/todo_card_models.dart';
import 'package:tiket_com_clone/view/home/todo_components/custom_text_todo.dart';
import 'package:tiket_com_clone/view_models.dart/home_view_models.dart';

class AllTodoCards extends StatelessWidget {
  AllTodoCards({
    Key? key,
    required this.dataSequence,
  }) : super(key: key);
  final int dataSequence;
  late List<TodoCardModels>? data;

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HomeViewModels>(context, listen: false);
    if (dataSequence == 0) {
      data = dataProvider.atractionTodoData;
    } else if (dataSequence == 1) {
      data = dataProvider.hotelTodoData;
    } else if (dataSequence == 2) {
      data = dataProvider.homesTodoData;
    } else if (dataSequence == 3) {
      data = dataProvider.eventTodoData;
    } else if (dataSequence == 4) {
      data = dataProvider.playgroundTodoData;
    } else if (dataSequence == 5) {
      data = dataProvider.tourTodoData;
    } else if (dataSequence == 6) {
      data = dataProvider.beautyAndFitnessTodoData;
    } else if (dataSequence == 7) {
      data = dataProvider.otherTodoData;
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          data!.length,
          (index) => Row(
            children: [
              Visibility(
                visible: index == 0,
                child: const SizedBox(
                  width: 24,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 3,
                shadowColor: Colors.white54,
                child: SizedBox(
                  height: 254,
                  width: 182,
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: double.maxFinite,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Image.asset(
                          data![index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextTodo(
                        data: data![index],
                      )

                      // const Text("4.2/5 (13149 Review)"),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: index == data!.length - 1,
                child: const SizedBox(
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
