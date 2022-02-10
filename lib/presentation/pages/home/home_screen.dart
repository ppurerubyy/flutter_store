import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/api_service.dart';
import 'package:shop/domain/repositories/product_repository.dart';
import 'package:shop/presentation/pages/dimentions/padding_constants.dart';
import 'package:shop/presentation/pages/home/home_bloc.dart';
import 'package:shop/presentation/pages/home/state/home_state.dart';

import 'events/home_events.dart';
import 'widgets/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  late ApiService apiService;
  late Future<Response> productsResponse;

  @override
  void initState() {
    apiService = ApiService.create();
    productsResponse = apiService.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our products'),
      ),
      body: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(repository: ProductRepositoryImpl()),
        child: Builder(
          builder: (context) {
            final bloc = context.read<HomeBloc>();
            return SingleChildScrollView(
              child: BlocBuilder<HomeBloc, HomeState>(
                  bloc: bloc,
                  buildWhen: (previous, current) =>
                      previous.productDto != current.productDto,
                  builder: (BuildContext context, state) {
                    bloc.add(const HomeLoadEvent());

                    return state.productDto.isNotEmpty
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: PaddingConstants.sidePadding),
                            child: Column(
                              children: state.productDto
                                  .map(
                                    (item) => Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: ProductWidget(
                                        item: item,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          )
                        : SizedBox(
                            height: MediaQuery.of(context).size.height / 1.3,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                  }),
            );
          },
        ),
      ),
    );
  }
}
