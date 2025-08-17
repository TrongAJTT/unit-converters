// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get title => 'Random Please';

  @override
  String get appVersion => 'Phiên bản Ứng dụng';

  @override
  String get versionType => 'Loại Phiên bản';

  @override
  String get versionTypeDev => 'Phát triển';

  @override
  String get versionTypeBeta => 'Beta';

  @override
  String get versionTypeRelease => 'Phát hành';

  @override
  String get versionTypeDevDisplay => 'Phiên bản phát triển';

  @override
  String get versionTypeBetaDisplay => 'Phiên bản Beta';

  @override
  String get versionTypeReleaseDisplay => 'Phiên bản phát hành';

  @override
  String get githubRepo => 'Kho lưu trữ GitHub';

  @override
  String get githubRepoDesc => 'Xem mã nguồn của ứng dụng trên GitHub';

  @override
  String get creditAck => 'Ghi công tác giả';

  @override
  String get creditAckDesc => 'Danh sách các thư viện, công cụ và nguồn tài nguyên đã sử dụng trong ứng dụng này.';

  @override
  String get donorsAck => 'Ghi công người ủng hộ';

  @override
  String get donorsAckDesc => 'Danh sách đánh giá của những người ủng hộ công khai. Cảm ơn các bạn rất nhiều!';

  @override
  String get supportDesc => 'Random Please giúp bạn tạo dữ liệu ngẫu nhiên một cách dễ dàng, thuận tiện và miễn phí. Nếu bạn thấy ứng dụng hữu ích, hãy cân nhắc hỗ trợ mình để giúp mình duy trì và phát triển ứng dụng này. Cảm ơn bạn rất nhiều!';

  @override
  String get supportOnGitHub => 'Hỗ trợ trên GitHub';

  @override
  String get donate => 'Ủng hộ';

  @override
  String get donateDesc => 'Hỗ trợ tôi nếu bạn thấy ứng dụng này hữu ích';

  @override
  String get oneTimeDonation => 'Ủng hộ một lần';

  @override
  String get momoDonateDesc => 'Hỗ trợ tôi qua Momo';

  @override
  String get donorBenefits => 'Lợi ích của người ủng hộ';

  @override
  String get donorBenefit1 => 'Được liệt kê trong phần cảm ơn và chia sẻ ý kiến của bạn (nếu bạn muốn).';

  @override
  String get donorBenefit2 => 'Xem xét phản hồi ưu tiên.';

  @override
  String get donorBenefit3 => 'Truy cập vào các phiên bản beta (debug) của phần mềm khác của tôi P2Lan Transfer, tuy nhiên không đảm bảo cập nhật thường xuyên.';

  @override
  String get settings => 'Cài đặt';

  @override
  String get theme => 'Chủ đề';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get userInterface => 'Giao diện người dùng';

  @override
  String get userInterfaceDesc => 'Cài đặt chủ đề và ngôn ngữ và phong cách hiển thị';

  @override
  String get converterTools => 'Công cụ chuyển đổi';

  @override
  String get converterToolsDesc => 'Chuyển đổi giữa các đơn vị và hệ thống khác nhau';

  @override
  String get dataManager => 'Quản lý dữ liệu';

  @override
  String get dataManagerDesc => 'Xóa toàn bộ dữ liệu';

  @override
  String get system => 'Theo hệ thống';

  @override
  String get light => 'Sáng';

  @override
  String get dark => 'Tối';

  @override
  String get english => 'Tiếng Anh';

  @override
  String get vietnamese => 'Tiếng Việt';

  @override
  String get cache => 'Bộ nhớ đệm';

  @override
  String get clearCache => 'Xóa bộ nhớ đệm';

  @override
  String get cacheSize => 'Kích thước bộ nhớ đệm';

  @override
  String get clearAllCache => 'Xóa tất cả bộ nhớ đệm';

  @override
  String get viewLogs => 'Xem nhật ký';

  @override
  String get clearLogs => 'Xóa nhật ký';

  @override
  String get logRetention => 'Thời gian lưu nhật ký';

  @override
  String logRetentionDays(int days) {
    return '$days ngày';
  }

  @override
  String get logRetentionForever => 'Vĩnh viễn';

  @override
  String get historyManager => 'Quản lý lịch sử';

  @override
  String get logRetentionDescDetail => 'Nhật ký sẽ được lưu trữ trong bộ nhớ đệm và có thể được xóa tự động sau một khoảng thời gian nhất định. Bạn có thể đặt thời gian lưu giữ nhật ký từ 5 đến 30 ngày (bước nhảy 5 ngày) hoặc chọn lưu vĩnh viễn.';

  @override
  String get dataAndStorage => 'Dữ liệu & Lưu trữ';

  @override
  String get confirmClearAllCache => 'Bạn có chắc chắn muốn xóa TẤT CẢ dữ liệu trong bộ nhớ đệm không? Thao tác này sẽ xóa tất cả các mẫu đã lưu nhưng vẫn giữ lại cài đặt của bạn.';

  @override
  String get cannotClearFollowingCaches => 'Không thể xóa các bộ nhớ đệm sau vì chúng đang được sử dụng:';

  @override
  String get allCacheCleared => 'Đã xóa tất cả bộ nhớ đệm thành công';

  @override
  String get close => 'Đóng';

  @override
  String get options => 'Tùy chọn';

  @override
  String get about => 'Giới thiệu';

  @override
  String get add => 'Thêm';

  @override
  String get copy => 'Sao chép';

  @override
  String get cancel => 'Hủy';

  @override
  String get history => 'Lịch sử';

  @override
  String get random => 'Trình tạo ngẫu nhiên';

  @override
  String get randomDesc => 'Tạo mật khẩu, số, ngày và nhiều thứ ngẫu nhiên khác';

  @override
  String get textTemplateGen => 'Tạo văn bản theo mẫu';

  @override
  String get textTemplateGenDesc => 'Tạo văn bản theo biểu mẫu có sẵn. Bạn có thể tạo các mẫu văn bản với các trường thông tin cần điền như văn bản, số, ngày tháng để sử dụng lại nhiều lần.';

  @override
  String get holdToDeleteInstruction => 'Nhấn giữ nút xóa trong 5 giây để xác nhận';

  @override
  String get holdToDelete => 'Nhấn giữ để xóa...';

  @override
  String get deleting => 'Đang xóa...';

  @override
  String get holdToClearCache => 'Nhấn giữ để xóa...';

  @override
  String get clearingCache => 'Đang xóa cache...';

  @override
  String get batchDelete => 'Delete Selected';

  @override
  String get passwordGenerator => 'Tạo mật khẩu';

  @override
  String get passwordGeneratorDesc => 'Tạo mật khẩu ngẫu nhiên an toàn';

  @override
  String get numCharacters => 'Số ký tự';

  @override
  String get includeLowercase => 'Bao gồm chữ thường';

  @override
  String get includeUppercase => 'Bao gồm chữ hoa';

  @override
  String get includeNumbers => 'Bao gồm số';

  @override
  String get includeSpecial => 'Bao gồm ký tự đặc biệt';

  @override
  String get generate => 'Tạo';

  @override
  String generatedAtTime(String time) {
    return 'Tạo vào $time';
  }

  @override
  String get generatedPassword => 'Mật khẩu đã tạo';

  @override
  String get copyToClipboard => 'Sao chép';

  @override
  String get copied => 'Đã sao chép!';

  @override
  String get startDate => 'Ngày bắt đầu';

  @override
  String get endDate => 'Ngày kết thúc';

  @override
  String get year => 'Year';

  @override
  String get month => 'Month';

  @override
  String get first => 'First';

  @override
  String get monday => 'Thứ hai';

  @override
  String get tuesday => 'Thứ ba';

  @override
  String get wednesday => 'Thứ tư';

  @override
  String get thursday => 'Thứ năm';

  @override
  String get friday => 'Thứ sáu';

  @override
  String get saturday => 'Thứ bảy';

  @override
  String get sunday => 'Chủ nhật';

  @override
  String get january => 'Tháng 1';

  @override
  String get february => 'Tháng 2';

  @override
  String get march => 'Tháng 3';

  @override
  String get april => 'Tháng 4';

  @override
  String get may => 'Tháng 5';

  @override
  String get june => 'Tháng 6';

  @override
  String get july => 'Tháng 7';

  @override
  String get august => 'Tháng 8';

  @override
  String get september => 'Tháng 9';

  @override
  String get october => 'Tháng 10';

  @override
  String get november => 'Tháng 11';

  @override
  String get december => 'Tháng 12';

  @override
  String get noHistoryYet => 'Chưa có lịch sử';

  @override
  String get confirmClearHistory => 'Bạn có chắc chắn muốn xóa lịch sử không?';

  @override
  String get confirmClearHistoryMessage => 'Điều này sẽ xóa tất cả các mục lịch sử đã lưu. Hành động này không thể hoàn tác.\nHãy chắc chắn rằng bạn đã lưu bất kỳ kết quả quan trọng nào trước khi tiếp tục.';

  @override
  String get historyCleared => 'Đã xóa lịch sử tính toán';

  @override
  String get pinnedHistoryCleared => 'Đã xóa lịch sử ghim';

  @override
  String get unpinnedHistoryCleared => 'Đã xóa lịch sử chưa ghim';

  @override
  String get numberGenerator => 'Tạo số ngẫu nhiên';

  @override
  String get numberGeneratorDesc => 'Tạo dãy số và chuỗi số ngẫu nhiên';

  @override
  String get integers => 'Số nguyên';

  @override
  String get floatingPoint => 'Số thực';

  @override
  String get minValue => 'Giá trị tối thiểu';

  @override
  String get maxValue => 'Giá trị tối đa';

  @override
  String get quantity => 'Số lượng';

  @override
  String get allowDuplicates => 'Cho phép trùng lặp';

  @override
  String get includeSeconds => 'Hiển thị số giây';

  @override
  String get generatedNumbers => 'Số đã tạo';

  @override
  String get yesNo => 'Có hay Không?';

  @override
  String get yesNoDesc => 'Nhận quyết định có/không nhanh chóng';

  @override
  String get flipCoin => 'Tung đồng xu';

  @override
  String get flipCoinDesc => 'Tung đồng xu ảo để chọn lựa ngẫu nhiên';

  @override
  String get rockPaperScissors => 'Kéo búa bao';

  @override
  String get rockPaperScissorsDesc => 'Chơi trò chơi kinh điển bằng tay';

  @override
  String get rollDice => 'Tung xúc xắc';

  @override
  String get rollDiceDesc => 'Tung xúc xắc ảo với số mặt tùy chỉnh';

  @override
  String get diceCount => 'Số lượng xúc xắc';

  @override
  String get diceSides => 'Số mặt mỗi xúc xắc';

  @override
  String get colorGenerator => 'Tạo màu ngẫu nhiên';

  @override
  String get colorGeneratorDesc => 'Tạo màu sắc và bảng màu ngẫu nhiên';

  @override
  String get generatedColor => 'Màu đã tạo';

  @override
  String get latinLetters => 'Chữ cái Latin';

  @override
  String get latinLettersDesc => 'Tạo chữ cái alphabet ngẫu nhiên';

  @override
  String get letterCount => 'Số lượng chữ cái';

  @override
  String get playingCards => 'Bài tây';

  @override
  String get playingCardsDesc => 'Rút thẻ bài ngẫu nhiên';

  @override
  String get includeJokers => 'Bao gồm lá Joker';

  @override
  String get cardCount => 'Số lượng lá bài';

  @override
  String get from => 'Từ';

  @override
  String get actions => 'Hành động';

  @override
  String get delete => 'Xóa';

  @override
  String get dateGenerator => 'Tạo ngày ngẫu nhiên';

  @override
  String get dateGeneratorDesc => 'Tạo ngày tháng ngẫu nhiên trong khoảng';

  @override
  String get dateCount => 'Số lượng ngày';

  @override
  String get timeGenerator => 'Tạo giờ ngẫu nhiên';

  @override
  String get timeGeneratorDesc => 'Tạo thời gian trong ngày ngẫu nhiên';

  @override
  String get startTime => 'Giờ bắt đầu';

  @override
  String get endTime => 'Giờ kết thúc';

  @override
  String get timeCount => 'Số lượng giờ';

  @override
  String get dateTimeGenerator => 'Tạo ngày giờ ngẫu nhiên';

  @override
  String get dateTimeGeneratorDesc => 'Tạo kết hợp ngày và giờ ngẫu nhiên';

  @override
  String get heads => 'Sấp';

  @override
  String get tails => 'Ngửa';

  @override
  String get rock => 'Búa';

  @override
  String get paper => 'Bao';

  @override
  String get scissors => 'Kéo';

  @override
  String get randomResult => 'Kết quả';

  @override
  String get skipAnimation => 'Bỏ qua hoạt ảnh';

  @override
  String get skipAnimationDesc => 'Hiển thị kết quả ngay lập tức mà không có hiệu ứng hình ảnh';

  @override
  String latinLetterGenerationError(int count) {
    return 'Không thể tạo $count chữ cái duy nhất từ bộ có sẵn. Vui lòng giảm số lượng hoặc cho phép trùng lặp.';
  }

  @override
  String get saveGenerationHistory => 'Ghi nhớ lịch sử tạo';

  @override
  String get saveGenerationHistoryDesc => 'Ghi nhớ và hiển thị lịch sử các mục đã tạo';

  @override
  String get generationHistory => 'Lịch sử tạo';

  @override
  String get generatedAt => 'Tạo lúc';

  @override
  String get noHistoryMessage => 'Tạo một số kết quả ngẫu nhiên để xem chúng ở đây';

  @override
  String get clearHistory => 'Xóa lịch sử';

  @override
  String get clearAllItems => 'Xóa Tất Cả Lịch Sử';

  @override
  String get confirmClearAllHistory => 'Bạn có chắc chắn muốn xóa TẤT CẢ lịch sử không? Điều này sẽ xóa tất cả lịch sử của công cụ này ngay cả các mục đã ghim của bạn.\nHãy chắc chắn rằng bạn đã lưu bất kỳ kết quả quan trọng nào trước khi tiếp tục.';

  @override
  String get clearPinnedItems => 'Xóa Các Mục Đã Ghim';

  @override
  String get clearPinnedItemsDesc => 'Xóa tất cả các mục đã ghim khỏi lịch sử? Điều này sẽ không ảnh hưởng đến các mục chưa ghim.\nHãy chắc chắn rằng bạn đã lưu bất kỳ kết quả quan trọng nào trước khi tiếp tục.';

  @override
  String get clearUnpinnedItems => 'Xóa Các Mục Chưa Ghim';

  @override
  String get clearUnpinnedItemsDesc => 'Xóa tất cả các mục chưa ghim khỏi lịch sử? Điều này sẽ không ảnh hưởng đến các mục đã ghim.\nHãy chắc chắn rằng bạn đã lưu bất kỳ kết quả quan trọng nào trước khi tiếp tục.';

  @override
  String get typeConfirmToProceed => 'Nhập \"confirm\" để tiếp tục:';

  @override
  String get clearAll => 'Xóa tất cả';

  @override
  String get calculatorTools => 'Công cụ tính toán';

  @override
  String get calculatorToolsDesc => 'Các máy tính chuyên dụng cho sức khỏe, tài chính và hơn thế nữa';

  @override
  String get value => 'Giá trị';

  @override
  String get success => 'Thành công';

  @override
  String get calculate => 'Tính toán';

  @override
  String get calculating => 'Đang tính toán...';

  @override
  String get unknown => 'Không rõ';

  @override
  String get logsAvailable => 'Log khả dụng';

  @override
  String get scrollToTop => 'Lên đầu trang';

  @override
  String get scrollToBottom => 'Xuống cuối trang';

  @override
  String get logActions => 'Hành động log';

  @override
  String get logApplication => 'Nhật ký Ứng dụng';

  @override
  String get previousChunk => 'Phần trước';

  @override
  String get nextChunk => 'Phần sau';

  @override
  String get loadAll => 'Tải tất cả';

  @override
  String get firstPart => 'Phần đầu';

  @override
  String get lastPart => 'Phần cuối';

  @override
  String get largeFile => 'File lớn';

  @override
  String get loadingLargeFile => 'Đang tải file lớn...';

  @override
  String get loadingLogContent => 'Đang tải nội dung log...';

  @override
  String get largeFileDetected => 'Phát hiện file lớn. Đang sử dụng tải tối ưu...';

  @override
  String get focusModeEnabled => 'Chế độ tập trung';

  @override
  String get saveRandomToolsState => 'Lưu trạng thái Random Tools';

  @override
  String get saveRandomToolsStateDesc => 'Tự động lưu cài đặt công cụ khi tạo kết quả';

  @override
  String get aspectRatio => 'Tỉ lệ khung hình';

  @override
  String get reset => 'Đặt lại';

  @override
  String get info => 'Thông tin';

  @override
  String get deletingOldLogs => 'Đang xóa log cũ...';

  @override
  String deletedOldLogFiles(int count) {
    return 'Đã xóa $count file log cũ';
  }

  @override
  String get noOldLogFilesToDelete => 'Không có file log cũ nào để xóa';

  @override
  String errorDeletingLogs(String error) {
    return 'Lỗi khi xóa log: $error';
  }

  @override
  String get p2pDataTransfer => 'Truyền Dữ Liệu P2P';

  @override
  String get p2pDataTransferDesc => 'Truyền tệp giữa các thiết bị trong cùng mạng cục bộ.';

  @override
  String get clear => 'Xóa';

  @override
  String get debug => 'Gỡ lỗi';

  @override
  String get remove => 'Xóa';

  @override
  String get none => 'Không';

  @override
  String get storage => 'Lưu trữ';

  @override
  String get moveTo => 'Di chuyển vào';

  @override
  String get share => 'Chia sẻ';

  @override
  String get quickAccess => 'Truy cập nhanh';

  @override
  String get colorFormat => 'Định dạng màu';

  @override
  String get aboutToOpenUrlOutsideApp => 'Bạn sắp mở một URL bên ngoài ứng dụng. Bạn có muốn tiếp tục không?';

  @override
  String get ccontinue => 'Tiếp tục';

  @override
  String get errorOpeningUrl => 'Lỗi khi mở URL';

  @override
  String get canNotOpenUrl => 'Không thể mở URL';

  @override
  String get linkCopiedToClipboard => 'Liên kết đã được sao chép vào clipboard';

  @override
  String get refresh => 'Làm mới';

  @override
  String get loading => 'Đang tải...';

  @override
  String get retry => 'Thử lại';

  @override
  String get supporterS => 'Người ủng hộ';

  @override
  String get thanksLibAuthor => 'Cảm ơn bạn, Tác giả Thư viện!';

  @override
  String get thanksLibAuthorDesc => 'Ứng dụng này sử dụng một số thư viện mã nguồn mở giúp cho nó trở nên khả thi. Chúng tôi rất biết ơn tất cả các tác giả vì những nỗ lực và sự cống hiến của họ.';

  @override
  String get thanksDonors => 'Cảm ơn những người ủng hộ!';

  @override
  String get thanksDonorsDesc => 'Đặc biệt cảm ơn những người ủng hộ đã hỗ trợ phát triển ứng dụng này. Những đóng góp của bạn giúp chúng tôi tiếp tục cải thiện và duy trì dự án.';

  @override
  String get thanksForUrSupport => 'Cảm ơn sự hỗ trợ của bạn!';

  @override
  String get pressBackAgainToExit => 'Nhấn quay lại lần nữa để thoát ứng dụng';

  @override
  String get checkingForUpdates => 'Đang kiểm tra cập nhật...';

  @override
  String get noNewUpdates => 'Không có cập nhật mới';

  @override
  String updateCheckError(String errorMessage) {
    return 'Lỗi khi kiểm tra cập nhật: $errorMessage';
  }

  @override
  String get usingLatestVersion => 'Bạn đang sử dụng phiên bản mới nhất';

  @override
  String get newVersionAvailable => 'Phiên bản mới có sẵn';

  @override
  String get latest => 'Mới nhất';

  @override
  String currentVersion(String version) {
    return 'Hiện tại: $version';
  }

  @override
  String publishDate(String publishDate) {
    return 'Ngày phát hành: $publishDate';
  }

  @override
  String get releaseNotes => 'Ghi chú phiên bản';

  @override
  String get noReleaseNotes => 'Không có ghi chú phiên bản';

  @override
  String get alreadyLatestVersion => 'Đã là phiên bản mới nhất';

  @override
  String get download => 'Tải về';

  @override
  String get selectVersionToDownload => 'Chọn phiên bản để tải';

  @override
  String get selectPlatform => 'Chọn nền tảng';

  @override
  String downloadPlatform(String platform) {
    return 'Tải xuống cho $platform';
  }

  @override
  String get noDownloadsAvailable => 'Không có tải xuống nào khả dụng';

  @override
  String get downloadApp => 'Tải ứng dụng';

  @override
  String get downloadAppDesc => 'Tải ứng dụng để sử dụng ngoại tuyến khi không có kết nối internet';

  @override
  String filteredForPlatform(String getPlatformName) {
    return 'Đã lọc cho $getPlatformName';
  }

  @override
  String sizeInMB(String sizeInMB) {
    return 'Kích thước: $sizeInMB';
  }

  @override
  String uploadDate(String updatedAt) {
    return 'Ngày tải lên: $updatedAt';
  }

  @override
  String get confirmDelete => 'Xác nhận xóa';

  @override
  String get confirmDownload => 'Xác nhận tải xuống';

  @override
  String confirmDownloadMessage(String name, String sizeInMB) {
    return 'Bạn có chắc chắn muốn tải phiên bản này xuống?\n\nTên tệp: $name\nKích thước: $sizeInMB';
  }

  @override
  String get currentPlatform => 'Nền tảng hiện tại';

  @override
  String get eerror => 'Lỗi';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get termsOfUseView => 'Xem Điều khoản sử dụng của ứng dụng này';

  @override
  String get versionInfo => 'Thông tin phiên bản';

  @override
  String get checkForNewVersion => 'Kiểm tra phiên bản mới';

  @override
  String get checkForNewVersionDesc => 'Kiểm tra xem có phiên bản mới của ứng dụng không và tải về bản mới nhất nếu có';

  @override
  String get platform => 'Nền tảng';

  @override
  String get fileS => 'Tệp tin';

  @override
  String get alsoViewAuthorOtherProducts => 'Cũng xem các sản phẩm khác của tác giả';

  @override
  String get authorProducts => 'Sản phẩm khác';

  @override
  String get authorProductsDesc => 'Xem các sản phẩm khác của tác giả, có thể bạn sẽ quan tâm!';

  @override
  String get authorProductsMessage => 'Chào bạn! Đây là một số sản phẩm khác của tôi. Nếu bạn quan tâm, đừng ngần ngại xem qua nhé! Tôi hy vọng bạn sẽ tìm thấy điều gì đó hữu ích trong số này. Cảm ơn bạn đã ghé thăm!';

  @override
  String get noOtherProducts => 'Không có sản phẩm nào khác';

  @override
  String get loadingProducts => 'Đang tải sản phẩm...';

  @override
  String get failedToLoadProducts => 'Không thể tải sản phẩm';

  @override
  String get retryLoadProducts => 'Thử tải lại sản phẩm';

  @override
  String get visitProduct => 'Xem sản phẩm';

  @override
  String productCount(int count) {
    return '$count sản phẩm';
  }

  @override
  String get deleteHistoryItem => 'Xóa mục';

  @override
  String get tapDeleteAgainToConfirm => 'Nhấn xóa lần nữa để xác nhận';

  @override
  String get historyItemDeleted => 'Mục lịch sử đã bị xóa';

  @override
  String get pinHistoryItem => 'Ghim mục';

  @override
  String get unpinHistoryItem => 'Bỏ ghim mục';

  @override
  String get historyItemPinned => 'Mục đã được ghim';

  @override
  String get historyItemUnpinned => 'Mục đã bỏ ghim';

  @override
  String get securitySetupTitle => 'Thiết lập bảo mật ứng dụng';

  @override
  String get securitySetupMessage => 'Bạn có muốn thiết lập mật khẩu chính để bảo vệ dữ liệu không?\nĐiều này sẽ bảo vệ lịch sử khỏi truy cập trái phép và chống đánh cắp dữ liệu.';

  @override
  String get setMasterPassword => 'Đặt mật khẩu chính';

  @override
  String get skipSecurity => 'Bỏ qua (Sử dụng không cần mật khẩu)';

  @override
  String get createMasterPasswordTitle => 'Tạo mật khẩu chính';

  @override
  String get createMasterPasswordMessage => 'Vui lòng tạo một mật khẩu chính mạnh.\nHãy nhớ kỹ mật khẩu này.\nnếu quên, toàn bộ dữ liệu sẽ bị mất.';

  @override
  String get enterPassword => 'Nhập mật khẩu';

  @override
  String get confirmPassword => 'Xác nhận mật khẩu';

  @override
  String get passwordMismatch => 'Mật khẩu không khớp';

  @override
  String get passwordTooShort => 'Mật khẩu phải có ít nhất 6 ký tự';

  @override
  String get showPassword => 'Hiện mật khẩu';

  @override
  String get hidePassword => 'Ẩn mật khẩu';

  @override
  String get enterMasterPasswordTitle => 'Nhập mật khẩu chính';

  @override
  String get enterMasterPasswordMessage => 'Vui lòng nhập mật khẩu chính để truy cập ứng dụng.';

  @override
  String get wrongPassword => 'Sai mật khẩu. Vui lòng thử lại.';

  @override
  String get forgotPasswordButton => 'Tôi đã quên mật khẩu và chấp nhận mất dữ liệu';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get confirmDataLossTitle => 'Xác nhận mất dữ liệu';

  @override
  String get confirmDataLossMessage => 'Bạn sẽ có thể tiếp tục sử dụng ứng dụng mà không cần nhập mật khẩu, nhưng toàn bộ dữ liệu lịch sử sẽ bị xóa vĩnh viễn.\nHành động này không thể hoàn tác.';

  @override
  String get holdToConfirm => 'Giữ để xác nhận';

  @override
  String get dataProtectionSettings => 'Cài đặt bảo vệ dữ liệu';

  @override
  String get enableDataProtection => 'Bật bảo vệ dữ liệu';

  @override
  String get disableDataProtection => 'Tắt bảo vệ dữ liệu';

  @override
  String get dataProtectionEnabled => 'Bảo vệ dữ liệu hiện đang được bật';

  @override
  String get dataProtectionDisabled => 'Bảo vệ dữ liệu hiện đang được tắt';

  @override
  String get enterCurrentPassword => 'Nhập mật khẩu hiện tại để tắt bảo vệ';

  @override
  String get securityEnabled => 'Bảo mật đã được bật thành công';

  @override
  String get securityDisabled => 'Bảo mật đã được tắt thành công';

  @override
  String get migrationInProgress => 'Đang di chuyển dữ liệu...';

  @override
  String get migrationCompleted => 'Hoàn tất di chuyển dữ liệu';

  @override
  String get migrationFailed => 'Di chuyển dữ liệu thất bại';

  @override
  String get solid => 'Đặc';

  @override
  String get includeAlpha => 'Bao gồm dãy màu Alpha';

  @override
  String totalANumber(int total) {
    return 'Tổng: $total';
  }

  @override
  String get numberType => 'Loại số';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get dateErrStartEndConflict => 'Ngày bắt đầu không thể sau ngày kết thúc';

  @override
  String get arrangeTools => 'Sắp xếp công cụ';

  @override
  String get arrangeToolsDesc => 'Tùy chỉnh thứ tự các công cụ trong giao diện';

  @override
  String get howToArrangeTools => 'Cách sắp xếp công cụ';

  @override
  String get dragAndDropToReorder => 'Kéo và thả để sắp xếp lại các công cụ theo ý muốn';

  @override
  String get defaultOrder => 'Thứ tự mặc định';

  @override
  String get save => 'Lưu';

  @override
  String get reloadTools => 'Tải lại công cụ';

  @override
  String get compactTabLayout => 'Bố cục tab thu gọn';

  @override
  String get compactTabLayoutDesc => 'Ẩn biểu tượng trong tab để có giao diện gọn hơn';

  @override
  String get decimalPlaces => 'Số chữ số thập phân';

  @override
  String get decimalPlacesDesc => 'Số chữ số thập phân hiển thị trong kết quả chuyển đổi (1-6)';

  @override
  String decimalPlacesCount(int count) {
    return '$count chữ số';
  }

  @override
  String get letterCountRange => 'Khoảng số lượng chữ cái';

  @override
  String numberRangeFromTo(String from, String to) {
    return 'Khoảng giá trị: Từ $from đến $to';
  }

  @override
  String get loremIpsumGenerator => 'Tạo văn bản giả';

  @override
  String get loremIpsumGeneratorDesc => 'Lorem Ipsum';

  @override
  String get generationType => 'Loại tạo văn bản';

  @override
  String get words => 'Từ';

  @override
  String get sentences => 'Câu';

  @override
  String get paragraphs => 'Đoạn văn';

  @override
  String get wordCount => 'Số lượng từ';

  @override
  String get numberOfWordsToGenerate => 'Số lượng từ cần tạo';

  @override
  String get sentenceCount => 'Số lượng câu';

  @override
  String get numberOfSentencesToGenerate => 'Số lượng câu cần tạo';

  @override
  String get paragraphCount => 'Số lượng đoạn văn';

  @override
  String get numberOfParagraphsToGenerate => 'Số lượng đoạn văn cần tạo';

  @override
  String get startWithLorem => 'Bắt đầu bằng Lorem';

  @override
  String get startWithLoremDesc => 'Bắt đầu bằng câu kinh điển \'Lorem ipsum dolor sit amet...\'';

  @override
  String get listPicker => 'Chọn từ danh sách';

  @override
  String get listPickerDesc => 'Chọn từ các danh sách tùy chỉnh';

  @override
  String get selectList => 'Chọn danh sách';

  @override
  String get createNewList => 'Tạo danh sách mới';

  @override
  String get noListsAvailable => 'Không có danh sách nào';

  @override
  String get selectOrCreateList => 'Chọn hoặc tạo danh sách để bắt đầu chọn';

  @override
  String get manageList => 'Quản lý danh sách';

  @override
  String get addItem => 'Thêm mục';

  @override
  String get items => 'Items';

  @override
  String get generatorOptions => 'Tùy chọn trình tạo';

  @override
  String get allowDuplicatesDescription => 'Cho phép chọn cùng một mục nhiều lần';

  @override
  String get results => 'Kết quả';

  @override
  String get generateRandom => 'Chọn ngẫu nhiên';

  @override
  String get listName => 'Tên danh sách';

  @override
  String get create => 'Tạo';

  @override
  String get listPickerMode => 'Chế độ';

  @override
  String get modeRandom => 'Ngẫu nhiên';

  @override
  String get modeRandomDesc => 'Chọn các mục ngẫu nhiên từ danh sách';

  @override
  String get modeShuffle => 'Xáo trộn';

  @override
  String get modeShuffleDesc => 'Xáo trộn và chọn các mục theo thứ tự';

  @override
  String get modeTeam => 'Chia đội';

  @override
  String get modeTeamDesc => 'Chia các mục thành các đội';

  @override
  String get createListDialog => 'Tạo danh sách mới';

  @override
  String get enterListName => 'Nhập tên danh sách (tối đa 30 ký tự)';

  @override
  String get listNameRequired => 'Tên danh sách là bắt buộc';

  @override
  String get listNameTooLong => 'Tên danh sách quá dài (tối đa 30 ký tự)';

  @override
  String get listNameExists => 'Đã tồn tại danh sách với tên này';

  @override
  String get teams => 'Đội';

  @override
  String get itemsPerTeam => 'Số mục mỗi đội';

  @override
  String get addSingleItem => 'Thêm một mục';

  @override
  String get addMultipleItems => 'Thêm nhiều mục';

  @override
  String get addBatchItems => 'Thêm nhiều mục';

  @override
  String get enterItemsOneLine => 'Nhập các mục, mỗi dòng một mục:';

  @override
  String get batchItemsPlaceholder => 'Mục 1\nMục 2\nMục 3\n...';

  @override
  String previewItems(int count) {
    return 'Xem trước: $count mục';
  }

  @override
  String get addItems => 'Thêm mục';

  @override
  String get confirmAddItems => 'Xác nhận thêm mục';

  @override
  String confirmAddItemsMessage(int count, String listName) {
    return 'Thêm $count mục vào \"$listName\"?';
  }

  @override
  String addedItemsSuccessfully(int count) {
    return 'Đã thêm $count mục thành công';
  }

  @override
  String get enterAtLeastOneItem => 'Vui lòng nhập ít nhất một mục';

  @override
  String get maximumItemsAllowed => 'Tối đa 100 mục được phép';

  @override
  String get itemName => 'Item name';

  @override
  String get itemNameRequired => 'Item name is required';

  @override
  String get itemNameTooLong => 'Item name is too long (max 30 characters)';

  @override
  String get deleteList => 'Xóa danh sách';

  @override
  String deleteListConfirm(String listName) {
    return 'Bạn có chắc chắn muốn xóa \"$listName\"? Hành động này không thể hoàn tác.';
  }

  @override
  String get expand => 'Mở rộng';

  @override
  String get collapse => 'Thu gọn';

  @override
  String get viewDetails => 'Xem chi tiết';

  @override
  String get renameList => 'Đổi tên danh sách';

  @override
  String get renameItem => 'Đổi tên mục';

  @override
  String get renameListDialog => 'Đổi tên danh sách';

  @override
  String get renameItemDialog => 'Đổi tên mục';

  @override
  String get enterNewListName => 'Nhập tên danh sách mới (tối đa 30 ký tự)';

  @override
  String get enterNewItemName => 'Nhập tên mục mới (tối đa 30 ký tự)';

  @override
  String get rename => 'Đổi tên';

  @override
  String get newNameRequired => 'Tên mới là bắt buộc';

  @override
  String get newNameTooLong => 'Tên mới quá dài (tối đa 30 ký tự)';

  @override
  String get template => 'Mẫu';

  @override
  String get templates => 'Các mẫu';

  @override
  String get cloudTemplates => 'Mẫu trên đám mây';

  @override
  String get noInternetConnection => 'Không có kết nối internet';

  @override
  String get pleaseConnectAndTryAgain => 'Vui lòng kết nối internet và thử lại';

  @override
  String get languageCode => 'Ngôn ngữ';

  @override
  String itemsCount(int count) {
    return '$count mục';
  }

  @override
  String get import => 'Nhập';

  @override
  String get languageNotMatch => 'Không khớp ngôn ngữ';

  @override
  String get templateNotDesignedForLanguage => 'Mẫu này không được thiết kế cho ngôn ngữ của bạn.\nBạn có muốn tiếp tục không?';

  @override
  String get fetchingTemplates => 'Đang lấy các mẫu...';

  @override
  String get noTemplatesAvailable => 'Không có mẫu nào';

  @override
  String get selectTemplate => 'Chọn một mẫu để nhập';

  @override
  String get templateImported => 'Nhập mẫu thành công';

  @override
  String get continueButton => 'Tiếp tục';

  @override
  String get importingTemplate => 'Đang nhập mẫu...';

  @override
  String get errorImportingTemplate => 'Lỗi khi nhập mẫu';

  @override
  String get enter => 'Nhập';

  @override
  String get increase => 'Tăng';

  @override
  String get decrease => 'Giảm';

  @override
  String get range => 'Phạm vi';

  @override
  String get currencyConverter => 'Quy đổi tiền tệ';

  @override
  String get updatingRates => 'Đang cập nhật tỷ giá tiền tệ...';

  @override
  String lastUpdatedAt(Object date, Object time) {
    return 'Cập nhật lần cuối: $date lúc $time';
  }

  @override
  String get noRatesAvailable => 'Chưa có thông tin tỷ giá tiền tệ, đang lấy tỷ giá...';

  @override
  String get staticRates => 'Tĩnh';

  @override
  String get refreshRates => 'Làm mới tỷ giá';

  @override
  String get resetLayout => 'Đặt lại bố cục';

  @override
  String get confirmResetLayout => 'Xác nhận đặt lại bố cục';

  @override
  String get confirmResetLayoutMessage => 'Thao tác này sẽ đặt lại tất cả các thẻ và các đơn vị hiển thị về trạng thái mặc định. Không thể hoàn tác hành động này.';

  @override
  String get addCard => 'Thêm thẻ';

  @override
  String get addRow => 'Thêm dòng';

  @override
  String get cardView => 'Chế độ thẻ';

  @override
  String get cards => 'Thẻ';

  @override
  String get rows => 'Hàng';

  @override
  String get converter => 'Bộ chuyển đổi';

  @override
  String get amount => 'Số tiền';

  @override
  String get fromCurrency => 'Từ loại tiền';

  @override
  String get convertedTo => 'Chuyển đổi thành';

  @override
  String get removeCard => 'Xóa thẻ';

  @override
  String get removeRow => 'Xóa dòng';

  @override
  String get liveRates => 'Trực tiếp';

  @override
  String get liveRatesUpdated => 'Đã cập nhật tỷ giá trực tiếp thành công';

  @override
  String get staticRatesUsed => 'Đang sử dụng tỷ giá tĩnh (không có dữ liệu trực tiếp)';

  @override
  String get failedToUpdateRates => 'Không thể cập nhật tỷ giá';

  @override
  String get customizeCurrenciesDialog => 'Tùy chỉnh tiền tệ';

  @override
  String get searchCurrencies => 'Tìm kiếm tiền tệ...';

  @override
  String get noCurrenciesFound => 'Không tìm thấy tiền tệ';

  @override
  String currenciesSelected(Object count) {
    return 'Đã chọn $count loại tiền';
  }

  @override
  String get applyChanges => 'Áp dụng thay đổi';

  @override
  String get currencyStatusSuccess => 'Tỷ giá trực tiếp';

  @override
  String get currencyStatusFailed => 'Lỗi lấy dữ liệu';

  @override
  String get currencyStatusTimeout => 'Hết thời gian';

  @override
  String get currencyStatusNotSupported => 'Không hỗ trợ';

  @override
  String get currencyStatusStatic => 'Tỷ giá tĩnh';

  @override
  String get currencyStatusFetchedRecently => 'Đã fetch gần đây';

  @override
  String get currencyStatusSuccessDesc => 'Đã lấy tỷ giá trực tiếp thành công';

  @override
  String get currencyStatusFailedDesc => 'Không thể lấy tỷ giá trực tiếp, sử dụng tỷ giá tĩnh';

  @override
  String get currencyStatusTimeoutDesc => 'Hết thời gian chờ, sử dụng tỷ giá tĩnh';

  @override
  String get currencyStatusNotSupportedDesc => 'API không hỗ trợ loại tiền này';

  @override
  String get currencyStatusStaticDesc => 'Đang sử dụng tỷ giá tĩnh';

  @override
  String get currencyStatusFetchedRecentlyDesc => 'Đã fetch thành công trong vòng 1 giờ qua';

  @override
  String get currencyConverterInfo => 'Thông tin chuyển đổi tiền tệ';

  @override
  String get aboutThisFeature => 'Về chức năng này';

  @override
  String get aboutThisFeatureDesc => 'Chuyển đổi tiền tệ cho phép bạn quy đổi giữa các loại tiền khác nhau bằng tỷ giá trực tiếp hoặc tỷ giá tĩnh. Hỗ trợ hơn 80 loại tiền tệ trên thế giới.';

  @override
  String get howToUseDesc => '• Thêm hoặc xóa thẻ/dòng cho nhiều phép chuyển đổi\n• Tùy chỉnh các loại tiền hiển thị\n• Chuyển đổi giữa chế độ thẻ và bảng\n• Tỷ giá tự động cập nhật theo cài đặt của bạn';

  @override
  String get staticRatesInfo => 'Tỷ giá tĩnh';

  @override
  String get staticRatesInfoDesc => 'Tỷ giá tĩnh là giá trị dự phòng được sử dụng khi không thể lấy tỷ giá trực tiếp. Các tỷ giá này được cập nhật định kỳ và có thể không phản ánh giá thị trường thời gian thực.';

  @override
  String get viewStaticRates => 'Xem tỷ giá tĩnh';

  @override
  String get lastStaticUpdate => 'Lần cập nhật tỷ giá tĩnh cuối: Tháng 5/2025';

  @override
  String get staticRatesList => 'Danh sách tỷ giá tĩnh';

  @override
  String get rateBasedOnUSD => 'Tất cả tỷ giá dựa trên 1 USD';

  @override
  String get maxCurrenciesSelected => 'Tối đa 10 loại tiền có thể được chọn';

  @override
  String get savePreset => 'Lưu Cấu Hình';

  @override
  String get loadPreset => 'Lấy Cấu Hình';

  @override
  String get presetName => 'Tên Cấu Hình';

  @override
  String get enterPresetName => 'Nhập tên cấu hình';

  @override
  String get presetNameRequired => 'Tên cấu hình là bắt buộc';

  @override
  String get presetLoaded => 'Cấu hình đã được tải thành công';

  @override
  String get presetDeleted => 'Cấu hình đã được xóa thành công';

  @override
  String get deletePreset => 'Xóa Cấu Hình';

  @override
  String get confirmDeletePreset => 'Bạn có chắc chắn muốn xóa cấu hình này không?';

  @override
  String get sortBy => 'Sắp xếp theo';

  @override
  String get sortByName => 'Tên';

  @override
  String get sortByDate => 'Ngày tạo';

  @override
  String get noPresetsFound => 'Không tìm thấy cấu hình nào';

  @override
  String get deleteWithFile => 'Xóa cùng tập tin';

  @override
  String get deleteTaskOnly => 'Chỉ xóa tác vụ';

  @override
  String get deleteTaskWithFile => 'Xóa tác vụ cùng tập tin';

  @override
  String get deleteTaskWithFileConfirm => 'Bạn có chắc chắn muốn xóa tác vụ và tập tin đã tải về không?';

  @override
  String createdOn(Object date) {
    return 'Tạo vào $date';
  }

  @override
  String currencies(Object count) {
    return '$count loại tiền';
  }

  @override
  String currenciesCount(Object count) {
    return '$count loại tiền';
  }

  @override
  String createdDate(Object date) {
    return 'Tạo: $date';
  }

  @override
  String get sortByLabel => 'Sắp xếp theo:';

  @override
  String get selectPreset => 'Chọn';

  @override
  String get selected => 'Đã chọn';

  @override
  String get deletePresetAction => 'Xóa';

  @override
  String get deletePresetTitle => 'Xóa Cấu Hình';

  @override
  String get deletePresetConfirm => 'Bạn có chắc chắn muốn xóa cấu hình này không?';

  @override
  String get presetDeletedSuccess => 'Đã xóa cấu hình';

  @override
  String get errorLabel => 'Lỗi:';

  @override
  String get fetchTimeout => 'Thời Gian Chờ Fetch';

  @override
  String get fetchTimeoutDesc => 'Thiết lập thời gian chờ khi lấy tỷ giá (5-20 giây)';

  @override
  String fetchTimeoutSeconds(Object seconds) {
    return '${seconds}s';
  }

  @override
  String get fetchRetryIncomplete => 'Thử lại khi chưa hoàn tất';

  @override
  String get fetchRetryIncompleteDesc => 'Tự động thử lại các loại tiền bị lỗi/timeout trong quá trình fetch';

  @override
  String fetchRetryTimes(int times) {
    return '$times lần thử';
  }

  @override
  String get fetchingRates => 'Đang Lấy Tỷ Giá';

  @override
  String fetchingProgress(Object completed, Object total) {
    return 'Tiến độ: $completed/$total';
  }

  @override
  String timeRemaining(Object seconds) {
    return 'Thời gian còn lại: ${seconds}s';
  }

  @override
  String get fetchingStatus => 'Tình Trạng';

  @override
  String fetchingCurrency(Object currency) {
    return 'Đang lấy $currency...';
  }

  @override
  String get fetchComplete => 'Hoàn Thành';

  @override
  String get fetchCancelled => 'Đã Hủy';

  @override
  String get currencyFetchMode => 'Tải tỷ giá Tiền tệ';

  @override
  String get currencyFetchModeDesc => 'Chọn cách cập nhật tỷ giá hối đoái';

  @override
  String get fetchModeManual => 'Thủ công';

  @override
  String get fetchModeManualDesc => 'Chỉ sử dụng tỷ giá đã lưu, cập nhật thủ công bằng nút làm mới (giới hạn 6 tiếng 1 lần)';

  @override
  String get fetchModeOnceADay => 'Một lần mỗi ngày';

  @override
  String get fetchModeOnceADayDesc => 'Tự động tải tỷ giá một lần mỗi ngày';

  @override
  String get currencyFetchStatus => 'Trạng thái tải tiền tệ';

  @override
  String get fetchStatusSummary => 'Tóm tắt trạng thái tải';

  @override
  String get failed => 'Thất bại';

  @override
  String get timeout => 'Hết thời gian';

  @override
  String get static => 'Tĩnh';

  @override
  String get noCurrenciesInThisCategory => 'Không có tiền tệ nào trong danh mục này';

  @override
  String get saveFeatureState => 'Lưu trạng thái tính năng';

  @override
  String get saveFeatureStateDesc => 'Ghi nhớ trạng thái của các tính năng giữa các phiên sử dụng';

  @override
  String get lengthConverter => 'Chuyển đổi Chiều dài';

  @override
  String get temperatureConverter => 'Chuyển đổi Nhiệt độ';

  @override
  String get volumeConverter => 'Chuyển đổi Thể tích';

  @override
  String get areaConverter => 'Chuyển đổi Diện tích';

  @override
  String get speedConverter => 'Chuyển đổi Tốc độ';

  @override
  String get timeConverter => 'Chuyển đổi Thời gian';

  @override
  String get dataConverter => 'Chuyển đổi Dung lượng';

  @override
  String get numberSystemConverter => 'Chuyển đổi Hệ số';

  @override
  String get massConverter => 'Chuyển đổi Khối lượng';

  @override
  String get massConverterInfo => 'Thông tin Chuyển đổi Khối lượng';

  @override
  String get massConverterDesc => 'Chuyển đổi giữa các đơn vị khối lượng (kg, lb, oz)';

  @override
  String get weightConverter => 'Chuyển đổi Trọng lượng';

  @override
  String get weightConverterInfo => 'Thông tin Chuyển đổi Trọng lượng';

  @override
  String get weightConverterDesc => 'Chuyển đổi giữa các đơn vị lực/trọng lượng (N, kgf, lbf)';

  @override
  String get saveConverterToolsState => 'Lưu Trạng Thái Công Cụ Chuyển Đổi';

  @override
  String get saveConverterToolsStateDesc => 'Tự động lưu cài đặt và tùy chọn của công cụ chuyển đổi';

  @override
  String get dragging => 'Kéo...';

  @override
  String get edit => 'Chỉnh sửa';

  @override
  String get customizeUnits => 'Tùy chỉnh Đơn vị';

  @override
  String get cardName => 'Tên Thẻ';

  @override
  String get cardNameHint => 'Nhập tên thẻ (tối đa 20 ký tự)';

  @override
  String converterCardNameDefault(Object position) {
    return 'Thẻ $position';
  }

  @override
  String unitSelectedStatus(Object count, Object max) {
    return 'Đã chọn $count trong số $max';
  }

  @override
  String unitVisibleStatus(Object count) {
    return '$count đơn vị hiển thị';
  }

  @override
  String get moveDown => 'Di chuyển Xuống';

  @override
  String get moveUp => 'Di chuyển Lên';

  @override
  String get moveToFirst => 'Di chuyển đến Đầu';

  @override
  String get moveToLast => 'Di chuyển đến Cuối';

  @override
  String get cardActions => 'Hành Động Thẻ';

  @override
  String get viewDataStatus => 'Xem trạng thái dữ liệu';

  @override
  String tableWith(int count) {
    return 'Bảng $count thẻ';
  }

  @override
  String get enterValue => 'Nhập giá trị';

  @override
  String get fromUnit => 'Đơn vị gốc';

  @override
  String get tables => 'Bảng';

  @override
  String get tableView => 'Chế độ xem bảng';

  @override
  String get listView => 'Chế độ xem danh sách';

  @override
  String get visibleUnits => 'Đơn vị hiển thị';

  @override
  String get selectUnitsToShow => 'Chọn đơn vị để hiển thị';

  @override
  String get conversionResults => 'Kết quả chuyển đổi';

  @override
  String get unit => 'Đơn vị';

  @override
  String get showAll => 'Hiển thị tất cả';

  @override
  String get apply => 'Áp dụng';

  @override
  String get enableFocusMode => 'Bật chế độ tập trung';

  @override
  String get disableFocusMode => 'Tắt chế độ tập trung';

  @override
  String get noUnitsSelected => 'Chưa chọn đơn vị nào';

  @override
  String get maximumSelectionExceeded => 'Vượt quá số lượng tối đa';

  @override
  String get presetSaved => 'Preset đã được lưu thành công';

  @override
  String errorSavingPreset(String error) {
    return 'Lỗi khi lưu preset: $error';
  }

  @override
  String errorLoadingPresets(String error) {
    return 'Lỗi khi tải presets: $error';
  }

  @override
  String get maximumSelectionReached => 'Đã đạt giới hạn lựa chọn tối đa';

  @override
  String minimumSelectionRequired(int count) {
    return 'Cần tối thiểu $count lựa chọn';
  }

  @override
  String get renamePreset => 'Đổi tên Preset';

  @override
  String get presetRenamedSuccessfully => 'Preset đã được đổi tên thành công';

  @override
  String get chooseFromSavedPresets => 'Chọn từ các preset đã lưu';

  @override
  String get searchHint => 'Tìm kiếm...';

  @override
  String get select => 'Chọn';

  @override
  String focusModeEnabledMessage(String exitInstruction) {
    return 'Đã kích hoạt chế độ tập trung. $exitInstruction';
  }

  @override
  String get focusModeDisabledMessage => 'Đã tắt chế độ tập trung. Tất cả thành phần giao diện hiện đã hiển thị.';

  @override
  String get exitFocusModeDesktop => 'Nhấn biểu tượng tập trung trên thanh ứng dụng để thoát';

  @override
  String get exitFocusModeMobile => 'Zoom out hoặc nhấn biểu tượng tập trung để thoát';

  @override
  String get zoomToEnterFocusMode => 'Zoom in để vào chế độ tập trung';

  @override
  String get zoomToExitFocusMode => 'Zoom out để thoát chế độ tập trung';

  @override
  String get focusModeGesture => 'Sử dụng cử chỉ zoom để bật/tắt chế độ tập trung';

  @override
  String get focusModeButton => 'Sử dụng nút tập trung để bật/tắt chế độ tập trung';

  @override
  String get focusModeHidesElements => 'Chế độ tập trung ẩn widget trạng thái, nút thêm, nút chuyển chế độ xem và thống kê';

  @override
  String get randomTools => 'Công cụ Ngẫu nhiên';

  @override
  String get randomToolsDesc => 'Cài đặt cho các công cụ tạo ngẫu nhiên';

  @override
  String get converterSettings => 'Cài đặt Chuyển đổi';

  @override
  String get converterSettingsDesc => 'Cấu hình thời gian chờ, số lần thử lại và lưu trạng thái';

  @override
  String get converterToolsSettings => 'Cài đặt Công cụ Chuyển đổi';
}
