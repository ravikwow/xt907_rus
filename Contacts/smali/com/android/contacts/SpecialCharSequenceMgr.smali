.class public Lcom/android/contacts/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final HIDDEN_MENU_PATTERN:Ljava/util/regex/Pattern;

.field private static sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "##[0-9]{3,7}#"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->HIDDEN_MENU_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    .prologue
    .line 67
    sput-object p0, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    return-object p0
.end method

.method public static cleanup()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 155
    const-string v0, "SpecialCharSequenceMgr"

    const-string v1, "cleanup() is called outside the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    goto :goto_0
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 200
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 202
    .local v11, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsAdn(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1

    .line 211
    :cond_1
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 213
    .local v9, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    const/4 v1, 0x0

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 218
    .local v10, "len":I
    const/4 v1, 0x1

    if-le v10, v1, :cond_4

    const/4 v1, 0x5

    if-ge v10, v1, :cond_4

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    const/4 v1, 0x0

    add-int/lit8 v3, v10, -0x1

    :try_start_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 231
    .local v8, "index":I
    new-instance v0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 234
    .local v0, "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v1, v8, -0x1

    const/4 v3, -0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 238
    .local v2, "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v1, v8, -0x1

    iput v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 239
    invoke-virtual {v2, p2}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 242
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 243
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0b008c

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 244
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0b008b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 246
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 247
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 248
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 252
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 255
    const/4 v1, -0x1

    const-string v3, "content://icc/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v1, :cond_3

    .line 260
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v1}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 262
    :cond_3
    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 264
    .end local v0    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v2    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v8    # "index":I
    :catch_0
    move-exception v1

    .line 268
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z
    .param p3, "textField"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "dialString":Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 124
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 127
    .local v1, "phoneType":I
    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0, p3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleVersionDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleLogCheckinSvc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleNWSCPDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleOMADMCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleHiddenMenuCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static handleHiddenMenuCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 601
    sget-boolean v4, Lcom/android/contacts/ContactsApplication;->SPRINT_HIDDEN_MENU_APP_AVAILABLE:Z

    if-nez v4, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v3

    .line 606
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 607
    .local v2, "len":I
    const/4 v4, 0x3

    if-le v2, v4, :cond_0

    sget-object v4, Lcom/android/contacts/SpecialCharSequenceMgr;->HIDDEN_MENU_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, "hm_intent":Landroid/content/Intent;
    const-string v4, "com.motorola.hiddenmenuapp"

    const-string v5, "com.motorola.hiddenmenuapp.HiddenMenuApp"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    const-string v4, "HiddenMenuCode"

    const/4 v5, 0x2

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    const/4 v3, 0x1

    goto :goto_0

    .line 618
    .end local v1    # "hm_intent":Landroid/content/Intent;
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleHiddenMenuCode Exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 289
    const v4, 0x7f0a0017

    invoke-static {p0, v4}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 291
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 293
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    const-string v4, "*#06#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 295
    .local v0, "phoneType":I
    if-ne v0, v3, :cond_2

    .line 296
    invoke-static {p0, p2, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;ZLandroid/telephony/TelephonyManager;)V

    move v2, v3

    .line 297
    goto :goto_0

    .line 298
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 299
    invoke-static {p0, p2, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;ZLandroid/telephony/TelephonyManager;)V

    move v2, v3

    .line 300
    goto :goto_0
.end method

.method static handleLogCheckinSvc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 423
    const v1, 0x7f0a001c

    invoke-static {p0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    const-string v1, "#35468#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->sendCheckin(Landroid/content/Context;I)V

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Log Checkin initiated"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 431
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static handleNWSCPDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 570
    const v1, 0x7f0a001b

    invoke-static {p0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    const-string v1, "#073887*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->showNWSCPPanel()V

    .line 574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static handleOMADMCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 635
    sget-boolean v3, Lcom/android/contacts/ContactsApplication;->START_OMADM_DEBUG_APP:Z

    if-eqz v3, :cond_0

    const-string v3, "user"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v2

    .line 638
    :cond_1
    const-string v3, "##66236#"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "motorola.intent.action.LAUNCH_OMADM_TEST_APP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    const/4 v2, 0x1

    goto :goto_0

    .line 643
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SpecialCharSequenceMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in handleOMADMCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 273
    const v2, 0x7f0a001d

    invoke-static {p0, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "Failed to handlePinMmi due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    const v3, 0x7f0a001e

    invoke-static {p0, v3}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v2

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 180
    .local v1, "len":I
    const/16 v3, 0x8

    if-le v1, v3, :cond_0

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static handleVersionDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 369
    const-string v2, "*#9999#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    const v2, 0x7f0a0019

    invoke-static {p0, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showSWVersionPanel(Landroid/content/Context;Z)V

    move v0, v1

    .line 373
    goto :goto_0

    .line 374
    :cond_2
    const-string v2, "*#8888#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    const v2, 0x7f0a001a

    invoke-static {p0, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->isHiddenMenuBlocked(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showHWVersionPanel(Landroid/content/Context;Z)V

    move v0, v1

    .line 378
    goto :goto_0
.end method

.method private static isHiddenMenuBlocked(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configResID"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    const-string v4, "ro.debuggable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 657
    .local v0, "isCommercialBuild":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 660
    .end local v0    # "isCommercialBuild":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v3

    .line 656
    goto :goto_0

    .restart local v0    # "isCommercialBuild":Z
    :cond_2
    move v1, v3

    .line 657
    goto :goto_1
.end method

.method public static final sendCheckin(Landroid/content/Context;I)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v1, "com.motorola.blur.service.blur.checkin.fast_tracked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 418
    return-void
.end method

.method static showHWVersionPanel(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z

    .prologue
    .line 396
    const-string v2, "ro.radio.hw.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "hwVersionStr":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0205

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 404
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void
.end method

.method private static showIMEIPanel(Landroid/content/Context;ZLandroid/telephony/TelephonyManager;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "imeiStr":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 323
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void
.end method

.method private static showMEIDPanel(Landroid/content/Context;ZLandroid/telephony/TelephonyManager;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "meidStrH":Ljava/lang/String;
    const-string v5, ""

    .line 331
    .local v5, "meidStrD1":Ljava/lang/String;
    const-string v6, ""

    .line 333
    .local v6, "meidStrD2":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-lt v10, v11, :cond_0

    .line 335
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 337
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "meidStrP1":Ljava/lang/String;
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 340
    .local v9, "meidStrP2":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 342
    .local v1, "meidD1":J
    const/16 v10, 0x10

    :try_start_0
    invoke-static {v8, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 345
    :goto_0
    const-string v10, "%10d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 347
    const-wide/16 v3, 0x0

    .line 349
    .local v3, "meidD2":J
    const/16 v10, 0x10

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 352
    :goto_1
    const-string v10, "%08d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .end local v1    # "meidD1":J
    .end local v3    # "meidD2":J
    .end local v8    # "meidStrP1":Ljava/lang/String;
    .end local v9    # "meidStrP2":Ljava/lang/String;
    :goto_2
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0b0084

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HEX:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nDEC:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 364
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void

    .line 354
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    const-string v7, ""

    goto :goto_2

    .line 343
    .restart local v1    # "meidD1":J
    .restart local v8    # "meidStrP1":Ljava/lang/String;
    .restart local v9    # "meidStrP2":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 350
    .restart local v3    # "meidD2":J
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method static showNWSCPPanel()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_LAUNCH_SIM_UNLOCK_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ui_type"

    const-string v2, "NETWORK_LOCKED_UI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 584
    return-void
.end method

.method static showSWVersionPanel(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z

    .prologue
    .line 385
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 387
    .local v1, "swVersionStr":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0204

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 393
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void
.end method
