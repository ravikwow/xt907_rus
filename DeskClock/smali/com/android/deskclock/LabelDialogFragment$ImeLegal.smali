.class Lcom/android/deskclock/LabelDialogFragment$ImeLegal;
.super Ljava/lang/Object;
.source "LabelDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/LabelDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeLegal"
.end annotation


# static fields
.field private static isEnableIMEPicker:Z

.field private static motImeRetained:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->isEnableIMEPicker:Z

    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->motImeRetained:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static onPause(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/widget/EditText;

    .prologue
    .line 222
    sget-boolean v1, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->isEnableIMEPicker:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->motImeRetained:Z

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    .local v0, "imManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    .line 228
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->motImeRetained:Z

    .line 230
    .end local v0    # "imManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected static onResume(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/widget/EditText;

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->isEnableIMEPicker:Z

    .line 197
    sget-boolean v5, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->isEnableIMEPicker:Z

    if-eqz v5, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v5, "noIMESwitch,nm"

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "defIme":Ljava/lang/String;
    const-string v5, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 208
    .local v3, "imManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 210
    .local v1, "enabledImList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v4, "com.android.inputmethod.latin.LatinIME"

    .line 211
    .local v4, "motorolaIME":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 212
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.inputmethod.latin.LatinIME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    const/4 v6, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 214
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->motImeRetained:Z

    goto :goto_0

    .line 211
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
