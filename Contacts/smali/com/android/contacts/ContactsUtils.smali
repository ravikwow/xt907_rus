.class public Lcom/android/contacts/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# static fields
.field private static final CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

.field public static final DBG:Z

.field private static DBG_LEVEL:I

.field public static final VDBG:Z

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

.field private static sThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.PrivilegedOutgoingCallBroadcaster"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/ContactsUtils;->CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/ContactsUtils;->sThumbnailSize:I

    .line 59
    sput v5, Lcom/android/contacts/ContactsUtils;->DBG_LEVEL:I

    .line 60
    sget v0, Lcom/android/contacts/ContactsUtils;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    .line 62
    sget v0, Lcom/android/contacts/ContactsUtils;->DBG_LEVEL:I

    if-lt v0, v5, :cond_1

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static areContactWritableAccountsAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static areGroupWritableAccountsAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "a"    # Landroid/content/Intent;
    .param p1, "b"    # Landroid/content/Intent;

    .prologue
    .line 191
    if-ne p0, p1, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createHeaderView(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textResourceId"    # I

    .prologue
    .line 324
    const v2, 0x7f04006e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 325
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0600a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-object v1
.end method

.method public static getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    const-string v1, "com.android.phone.CALL_ORIGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :cond_0
    sget-object v1, Lcom/android/contacts/ContactsUtils;->CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 208
    .local v1, "detector":Landroid/location/CountryDetector;
    if-nez v1, :cond_0

    .line 209
    const-string v3, "ContactsUtils"

    const-string v4, "getCurrentCountryIso - context.getSystemService got null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-object v2

    .line 212
    :cond_0
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 213
    .local v0, "ct":Landroid/location/Country;
    if-nez v0, :cond_1

    .line 214
    const-string v3, "ContactsUtils"

    const-string v4, "getCurrentCountryIso - detector.detectCountry got null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInvitableIntent(Lcom/android/contacts/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p0, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 241
    .local v2, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "className":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    .line 245
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v3, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 337
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 338
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 340
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 341
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 342
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 343
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 344
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 345
    return-object v2
.end method

.method public static getThumbnailSize(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 354
    sget v0, Lcom/android/contacts/ContactsUtils;->sThumbnailSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "thumbnail_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 360
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/ContactsUtils;->sThumbnailSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    sget v0, Lcom/android/contacts/ContactsUtils;->sThumbnailSize:I

    return v0

    .line 362
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    return-object v0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 101
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 105
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 107
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 109
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "mimetype1"    # Ljava/lang/CharSequence;
    .param p1, "data1"    # Ljava/lang/CharSequence;
    .param p2, "mimetype2"    # Ljava/lang/CharSequence;
    .param p3, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 148
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "number1WithLetters"    # Ljava/lang/String;
    .param p1, "number2WithLetters"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 155
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "number1":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "number2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 159
    .local v0, "index1":I
    const/4 v1, 0x0

    .line 162
    .local v1, "index2":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_3

    move v3, v6

    .line 172
    .local v3, "number1End":Z
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    move v5, v6

    .line 173
    .local v5, "number2End":Z
    :goto_3
    if-eqz v3, :cond_5

    move v7, v5

    .line 179
    :cond_2
    return v7

    .end local v3    # "number1End":Z
    .end local v5    # "number2End":Z
    :cond_3
    move v3, v7

    .line 171
    goto :goto_2

    .restart local v3    # "number1End":Z
    :cond_4
    move v5, v7

    .line 172
    goto :goto_3

    .line 176
    .restart local v5    # "number2End":Z
    :cond_5
    if-nez v5, :cond_2

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 184
    goto :goto_0
.end method
