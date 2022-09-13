import 'package:mvvm_getx_practice/helper/server_gate.dart';
import 'package:mvvm_getx_practice/model/products_model.dart';

class ApiProducts {
  final ServerGate serverGate = ServerGate();
  ProductsModel model = ProductsModel();
  Future<List<ProductData>> fetchData() async {
    serverGate.addInterceptors();
    CustomResponse response = await serverGate.getFromServer(
      url: 'product/index',
    );
    model = ProductsModel.fromJson(response.response!.data);
    return model.data!;
  }
}
