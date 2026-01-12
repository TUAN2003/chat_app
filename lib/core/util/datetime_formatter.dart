class DatetimeFormatter {
  static String toStingDMY(DateTime date) {
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    String year = date.year.toString();

    return '$day/$month/$year';
  }

  static String formatMessageTime(DateTime messageTime) {
    // final now = DateTime.now();
    // final difference = now.difference(messageTime);

    // // Nếu là hôm nay
    // if (difference.inDays == 0 && now.day == messageTime.day) {
    //   return DateFormat('HH:mm').format(messageTime); // Hiển thị giờ:phút
    // }

    // // Nếu là trong tuần này
    // if (difference.inDays < 7 && now.weekday >= messageTime.weekday) {
    //   return DateFormat.E('vi').format(
    //       messageTime); // Hiển thị tên ngày trong tuần (Thứ Hai, Thứ Ba)
    // }

    // // Nếu trong năm hiện tại
    // if (now.year == messageTime.year) {
    //   return DateFormat('dd/MM').format(messageTime); // Hiển thị ngày/tháng
    // }

    // // Nếu là trước năm hiện tại
    // return DateFormat('dd/MM/yyyy')
    //     .format(messageTime); // Hiển thị ngày/tháng/năm
    return "";
  }
}
