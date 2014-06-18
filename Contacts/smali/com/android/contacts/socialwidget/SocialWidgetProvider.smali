.class public Lcom/android/contacts/socialwidget/SocialWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SocialWidgetProvider.java"


# static fields
.field private static sLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/model/ContactLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "x3"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method private static bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/model/Contact;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 136
    const-string v0, "SocialWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for widget with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f04008c

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/app/PendingIntent;)V

    .line 144
    invoke-static {p0, v6, v6}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    .line 168
    :goto_0
    invoke-virtual {p2, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 169
    return-void

    .line 146
    :cond_0
    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    .line 148
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 150
    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v6, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/quickcontact/QuickContactBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const/high16 v2, 0x8000000

    invoke-static {p0, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 161
    const v0, 0x7f06013c

    invoke-virtual {v1, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 163
    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p0, v6, v6}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p2, "widgetId"    # I
    .param p3, "forceLoad"    # Z

    .prologue
    const v6, 0x7f060042

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    sget-object v1, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/ContactLoader;

    .line 95
    .local v9, "previousLoader":Lcom/android/contacts/model/ContactLoader;
    if-eqz v9, :cond_1

    if-nez p3, :cond_1

    .line 96
    invoke-virtual {v9}, Lcom/android/contacts/model/ContactLoader;->startLoading()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz v9, :cond_2

    .line 101
    invoke-virtual {v9}, Lcom/android/contacts/model/ContactLoader;->reset()V

    .line 105
    :cond_2
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f04008c

    invoke-direct {v8, v1, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 107
    .local v8, "loadingViews":Landroid/widget/RemoteViews;
    const v1, 0x7f0b01af

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v8, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    const v1, 0x7f06013e

    const/16 v5, 0x8

    invoke-virtual {v8, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    invoke-virtual {p1, p2, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 114
    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getContactUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 116
    .local v2, "contactUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 120
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    move-object v1, p0

    move v5, v3

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZZ)V

    .line 122
    .local v0, "contactLoader":Lcom/android/contacts/model/ContactLoader;
    new-instance v1, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;-><init>(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 130
    invoke-virtual {v0}, Lcom/android/contacts/model/ContactLoader;->startLoading()V

    .line 131
    sget-object v1, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/app/PendingIntent;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "phoneticName"    # Ljava/lang/CharSequence;
    .param p5, "defaultIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p4, "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemEntry;>;"
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 184
    .local v5, "sb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v4, p2

    .line 186
    .local v4, "name":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 187
    const v11, 0x7f0b00fc

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 190
    const v11, 0x7f0b01ac

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object p3, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 193
    :cond_1
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 195
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080023

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v6, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 197
    .local v6, "sizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 198
    .local v9, "styleSpan":Landroid/text/style/StyleSpan;
    const/4 v11, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    const/4 v11, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v5, v9, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 202
    :cond_2
    const v11, 0x7f060042

    invoke-virtual {p1, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 203
    const v11, 0x7f060042

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 204
    const v11, 0x7f06013e

    const/16 v12, 0x8

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    if-eqz p5, :cond_3

    .line 208
    const v11, 0x7f06013a

    move-object/from16 v0, p5

    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 239
    :cond_3
    :goto_0
    return-void

    .line 212
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    .line 213
    .local v8, "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 214
    .local v7, "status":Ljava/lang/CharSequence;
    if-nez v7, :cond_5

    .line 215
    const-string v7, ""

    .line 217
    :cond_5
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x30

    if-gt v11, v12, :cond_6

    .line 218
    const-string v11, "\n"

    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 222
    :goto_1
    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 223
    const v11, 0x7f06013e

    invoke-virtual {p1, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 224
    const v11, 0x7f060042

    const/16 v12, 0x8

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    const v11, 0x7f06013e

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 227
    .local v3, "manager":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 229
    .local v1, "accountType":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 230
    sget-object v11, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 232
    .local v10, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v2, "intent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const v11, 0x7f06013d

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v12, v2, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 220
    .end local v1    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "manager":Lcom/android/contacts/model/AccountTypeManager;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v11, "  "

    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private static setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    const v0, 0x7f06013b

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 80
    move-object v1, p2

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 81
    .local v0, "appWidgetId":I
    sget-object v5, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ContactLoader;

    .line 82
    .local v4, "loader":Lcom/android/contacts/model/ContactLoader;
    if-eqz v4, :cond_0

    .line 83
    const-string v5, "SocialWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping loader for widget with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v4}, Lcom/android/contacts/model/ContactLoader;->reset()V

    .line 85
    sget-object v5, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "appWidgetId":I
    .end local v4    # "loader":Lcom/android/contacts/model/ContactLoader;
    :cond_1
    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->remove(Landroid/content/Context;[I)V

    .line 89
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 69
    move-object v1, p3

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 70
    .local v0, "appWidgetId":I
    const-string v4, "SocialWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdate called for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "appWidgetId":I
    :cond_0
    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 74
    .restart local v0    # "appWidgetId":I
    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method
