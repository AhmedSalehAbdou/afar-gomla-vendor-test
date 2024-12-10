class Pagination {
  Pagination({
    num? total,
    num? count,
    num? perPage,
    String? nextPageUrl,
    String? pervPageUrl,
    num? currentPage,
    num? totalPages,
  }) {
    _total = total;
    _count = count;
    _perPage = perPage;
    _nextPageUrl = nextPageUrl;
    _pervPageUrl = pervPageUrl;
    _currentPage = currentPage;
    _totalPages = totalPages;
  }

  Pagination.fromJson(dynamic json) {
    _total = json['total'];
    _count = json['count'];
    _perPage = json['per_page'];
    _nextPageUrl = json['next_page_url'];
    _pervPageUrl = json['perv_page_url'];
    _currentPage = json['current_page'];
    _totalPages = json['total_pages'];
  }

  num? _total;
  num? _count;
  num? _perPage;
  String? _nextPageUrl;
  String? _pervPageUrl;
  num? _currentPage;
  num? _totalPages;

  num? get total => _total;

  num? get count => _count;

  num? get perPage => _perPage;

  String? get nextPageUrl => _nextPageUrl;

  String? get pervPageUrl => _pervPageUrl;

  num? get currentPage => _currentPage;

  num? get totalPages => _totalPages;
}
