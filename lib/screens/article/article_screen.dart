import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/article/bloc/article_bloc.dart';
import '../../helpers/size_helper.dart';
import '../../models/article_model.dart';

class ArticleScreen extends StatefulWidget {
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  final ArticleBloc _newsBloc = ArticleBloc();

  @override
  void initState() {
    _newsBloc.add(GetArticleList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildListArticle(),
    );
  }

  Widget _buildListArticle() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: BlocProvider(
        create: (_) => _newsBloc,
        child: BlocListener<ArticleBloc, ArticleState>(
          listener: (context, state) {
            if (state is ArticleError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<ArticleBloc, ArticleState>(
            builder: (context, state) {
              if (state is ArticleInitial) {
                return _buildLoading();
              } else if (state is ArticleLoading) {
                return _buildLoading();
              } else if (state is ArticleLoaded) {
                return _buildCard(context, state.articleModel);
              } else if (state is ArticleError) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, ArticleModel model) {
    return ListView.builder(
      itemCount: model.data!.length,
      itemBuilder: (context, index) {
        print(model.error);
        return Container(
          alignment: Alignment.bottomLeft,
          height: displayHeight(context) * 0.25,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image:
                    NetworkImage("https://picsum.photos/seed/picsum/200/300"),
                fit: BoxFit.cover),
          ),
          child: Text("${model.data![index].title}"),
        );
      },
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}
