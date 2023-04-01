import 'package:asbeza/components/groccery_item.dart';
import 'package:asbeza/db/repo.dart';

class Service {
  Repository? _repository;

  Service() {
    _repository = Repository();
  }

  saveitem(Item item) async {
    return await _repository!.insertData('item', item.toString());
  }

  readitem() async {
    return await _repository!.readData('item');
  }

  updateitem(Item item) async {
    return await _repository!.updateData('item', item.toString());
  }

  deleteitem(dispatchId) async {
    return await _repository!.deleteData('item', dispatchId);
  }
}
