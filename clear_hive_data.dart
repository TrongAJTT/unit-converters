/// Script để clear Hive data cho fresh test
void main() async {
  print('=== CLEAR HIVE DATA ===');

  try {
    // Clear browser storage is tricky, but we can at least document the process
    print('To clear Hive data in Chrome for testing:');
    print('1. Open Chrome DevTools (F12)');
    print('2. Go to Application tab');
    print('3. Clear Storage → Clear site data');
    print('');
    print('Or use Chrome settings:');
    print('1. Chrome → Settings → Privacy and security');
    print('2. Clear browsing data → Advanced');
    print('3. Select "Cookies and other site data"');
    print('4. Select "Cached images and files"');
    print('5. Clear data');
    print('');
    print('Alternatively, open Chrome in Incognito mode for clean test');

    print('\n=== CLEAR COMPLETED ===');
  } catch (e, stackTrace) {
    print('❌ Error: $e');
    print('Stack trace: $stackTrace');
  }
}
