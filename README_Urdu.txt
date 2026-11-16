ذاتی Claude طرز کا چیٹ — Puter.js (Free-only)
================================================

فائل:
- index.html : مکمل چیٹ ایپ

اہم خصوصیات:
- Puter اکاؤنٹ کے ذریعے سائن اِن
- Puter کی موجودہ ماڈل فہرست سے صرف Claude کے وہ ماڈل دکھائے جاتے ہیں جن کی ID واضح طور پر :free پر ختم ہوتی ہو
- کوئی paid Claude ماڈل خودکار طور پر منتخب یا استعمال نہیں ہوگا
- اگر Puter میں فی الحال Claude کا مفت variant دستیاب نہ ہو تو ایپ واضح پیغام دے گی؛ کسی دوسرے AI سے خاموشی سے تبدیل نہیں کرے گی
- جواب streaming انداز میں دکھایا جاتا ہے
- چیٹ ہسٹری اسی براؤزر کے localStorage میں محفوظ ہوتی ہے؛ یہ خودکار طور پر دوسرے فون/کمپیوٹر پر منتقل نہیں ہوتی
- کوڈ بلاکس کے لیے Copy، Download اور HTML Preview
- کوئی Anthropic API key یا الگ backend درکار نہیں

استعمال:
1) index.html کو HTTPS ویب سائٹ یا localhost پر کھولیں۔ براہِ راست file:// سے Puter sign-in بعض براؤزرز میں کام نہیں کرتا۔
2) "Sign in with Puter" دبائیں اور اپنے Puter اکاؤنٹ میں سائن اِن کریں۔
3) ماڈل کے نام پر کلک کرکے دستیاب FREE Claude variant منتخب کریں۔
4) اپنا سوال لکھیں اور بھیج دیں۔

Vercel پر لگانے کا آسان طریقہ:
1) ZIP کھولیں۔
2) index.html کو GitHub repository میں رکھیں۔
3) Vercel میں Add New Project کے ذریعے repository import کریں۔
4) Framework Preset: Other منتخب کریں۔ Build Command اور Output Directory خالی/Default رہنے دیں؛ static HTML کے لیے کوئی build ضروری نہیں۔
5) Deploy دبائیں، پھر بننے والا HTTPS لنک کھولیں۔

لاگت اور حدود:
- Puter کے User-Pays ماڈل میں AI استعمال آپ کے اپنے Puter اکاؤنٹ پر شمار ہوتا ہے۔
- ہر اکاؤنٹ کو مفت ماہانہ allowance ملتا ہے، مگر یہ unlimited یا مستقل مفت استعمال کی ضمانت نہیں۔ allowance ختم ہونے، rate limit لگنے یا free model ہٹنے پر درخواست ناکام ہو سکتی ہے۔
- یہ ایپ paid model پر fallback نہیں کرتی۔ اگر :free Claude variant دستیاب نہ ہو تو انتظار کریں یا Puter کی موجودہ model directory/usage dashboard دیکھیں۔
- اصل Claude ویب ایپ کی تمام سہولتیں (مثلاً اس کے مخصوص tools، Projects، account features) اس static چیٹ میں شامل نہیں؛ یہ Claude ماڈل تک Puter کے ذریعے رسائی دینے والا ذاتی چیٹ انٹرفیس ہے۔
- چیٹ ہسٹری browser کے localStorage میں ہے؛ براؤزر کا site data صاف کرنے سے حذف ہو سکتی ہے۔

حفاظت:
- اس ورژن میں کوئی Anthropic API key شامل نہیں۔
- ایپ paid model ID قبول نہیں کرتی؛ صرف واضح :free variant کو request بھیجتی ہے اور provider fallback بند رکھتی ہے۔
