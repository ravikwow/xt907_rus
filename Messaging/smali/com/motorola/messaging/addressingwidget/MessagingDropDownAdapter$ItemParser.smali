.class public Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
.super Ljava/lang/Object;
.source "MessagingDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemParser"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mGroupId:J

.field private mInfo:Ljava/lang/CharSequence;

.field private mName:Ljava/lang/String;

.field private mPhotoBytes:[B

.field private mPhotoThumbnailUriString:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mGroupId:J

    .line 181
    const-string v2, "mimetype"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "mimeTypeIndex":I
    const-string v0, ""

    .line 185
    .local v0, "dataMimeType":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 186
    const-string v2, "mimetype"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    const-string v2, "display_name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    .line 190
    invoke-static {p2, p3}, Lcom/motorola/messaging/contact/ContactUtils;->getPhoneLabel(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mInfo:Ljava/lang/CharSequence;

    .line 191
    const-string v2, "data1"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mAddress:Ljava/lang/String;

    .line 192
    const-string v2, "photo_thumb_uri"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mPhotoThumbnailUriString:Ljava/lang/String;

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const-string v2, "display_name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    .line 195
    invoke-static {p2, p3}, Lcom/motorola/messaging/contact/ContactUtils;->getEmailLabel(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mInfo:Ljava/lang/CharSequence;

    .line 196
    const-string v2, "data1"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mAddress:Ljava/lang/String;

    .line 197
    const-string v2, "photo_thumb_uri"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mPhotoThumbnailUriString:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/content/Context;Landroid/database/Cursor;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/database/Cursor;
    .param p4, "x3"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$1;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getInfoLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getInfoLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mInfo:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mPhotoThumbnailUriString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mPhotoThumbnailUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 4

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1
    .param p1, "photoBytes"    # [B

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mInfo:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 263
    :cond_2
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
