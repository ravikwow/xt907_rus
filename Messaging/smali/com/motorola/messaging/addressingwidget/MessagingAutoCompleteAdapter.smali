.class public Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;
.super Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
.source "MessagingAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$PhotoQuery;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field public static final LOCAL_LOG:Z

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mOnlineAlbumDisplayName:Ljava/lang/String;

.field private mPendingPhotoRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoCacheMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    const-class v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->TAG:Ljava/lang/String;

    .line 38
    sput-boolean v1, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->DEBUG:Z

    .line 39
    sget-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->LOCAL_LOG:Z

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "mimetype"

    aput-object v3, v0, v1

    const-string v3, "display_name"

    aput-object v3, v0, v5

    const-string v3, "data1"

    aput-object v3, v0, v6

    const-string v3, "data2"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "photo_thumb_uri"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 74
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPendingPhotoRequest:Ljava/util/List;

    .line 84
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsOnlineAlbumEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const v0, 0x7f0b01a9

    invoke-static {p1, v0}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mOnlineAlbumDisplayName:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPendingPhotoRequest:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchPhotoAsync(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Landroid/net/Uri;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V
    .locals 4
    .param p1, "item"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p3, "holder"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    .prologue
    .line 176
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;Landroid/net/Uri;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V

    .line 229
    .local v0, "photoLoadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPendingPhotoRequest:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redundant request : Rejected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private queryEmails(Ljava/lang/CharSequence;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I

    .prologue
    const/4 v4, 0x0

    .line 131
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v3, "short_text"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 137
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->EMAIL_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryNumbers(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 119
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v3, "short_text"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 125
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->mAdapterContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->PHONE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryOnlineAlbum(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "cursor":Landroid/database/MatrixCursor;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mOnlineAlbumDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mOnlineAlbumDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mOnlineAlbumDisplayName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Landroid/database/MatrixCursor;

    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    sget-object v2, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 155
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 159
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 96
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->queryOnlineAlbum(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v3

    .line 98
    .local v3, "onlineAlbumCursor":Landroid/database/Cursor;
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->queryNumbers(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v4

    .line 100
    .local v4, "phoneCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 101
    .local v0, "emailCursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    rsub-int/lit8 v1, v5, 0xf

    .line 102
    .local v1, "limit":I
    if-lez v1, :cond_1

    .line 103
    invoke-direct {p0, p1, v1}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->queryEmails(Ljava/lang/CharSequence;I)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    :cond_1
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-direct {v2, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 107
    .local v2, "mergedCursor":Landroid/database/MergeCursor;
    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v2}, Landroid/database/AbstractCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    .end local v0    # "emailCursor":Landroid/database/Cursor;
    .end local v1    # "limit":I
    .end local v2    # "mergedCursor":Landroid/database/MergeCursor;
    .end local v3    # "onlineAlbumCursor":Landroid/database/Cursor;
    .end local v4    # "phoneCursor":Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 111
    .restart local v0    # "emailCursor":Landroid/database/Cursor;
    .restart local v1    # "limit":I
    .restart local v2    # "mergedCursor":Landroid/database/MergeCursor;
    .restart local v3    # "onlineAlbumCursor":Landroid/database/Cursor;
    .restart local v4    # "phoneCursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v2}, Landroid/database/MergeCursor;->close()V

    .line 115
    .end local v0    # "emailCursor":Landroid/database/Cursor;
    .end local v1    # "limit":I
    .end local v2    # "mergedCursor":Landroid/database/MergeCursor;
    .end local v3    # "onlineAlbumCursor":Landroid/database/Cursor;
    .end local v4    # "phoneCursor":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected tryFetchPhoto(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    .param p2, "holder"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    .line 164
    .local v1, "photoThumbnailUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 166
    .local v0, "photoBytes":[B
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p1, v0}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->setPhotoBytes([B)V

    .line 172
    .end local v0    # "photoBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v0    # "photoBytes":[B
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->fetchPhotoAsync(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Landroid/net/Uri;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V

    goto :goto_0
.end method
