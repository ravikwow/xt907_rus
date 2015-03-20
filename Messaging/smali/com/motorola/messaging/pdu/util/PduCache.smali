.class public final Lcom/motorola/messaging/pdu/util/PduCache;
.super Lcom/motorola/messaging/pdu/util/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/messaging/pdu/util/AbstractCache",
        "<",
        "Landroid/net/Uri;",
        "Lcom/motorola/messaging/pdu/util/PduCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z

.field private static final MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static sInstance:Lcom/motorola/messaging/pdu/util/PduCache;


# instance fields
.field private final mMessageBoxes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdating:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 34
    sput-boolean v3, Lcom/motorola/messaging/pdu/util/PduCache;->LOCAL_LOG:Z

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/util/AbstractCache;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    .line 84
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/motorola/messaging/pdu/util/PduCache;
    .locals 3

    .prologue
    .line 87
    const-class v1, Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->sInstance:Lcom/motorola/messaging/pdu/util/PduCache;

    if-nez v0, :cond_1

    .line 88
    sget-boolean v0, Lcom/motorola/messaging/pdu/util/PduCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "PduCache"

    const-string v2, "Constructing new PduCache instance."

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-direct {v0}, Lcom/motorola/messaging/pdu/util/PduCache;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->sInstance:Lcom/motorola/messaging/pdu/util/PduCache;

    .line 93
    :cond_1
    sget-object v0, Lcom/motorola/messaging/pdu/util/PduCache;->sInstance:Lcom/motorola/messaging/pdu/util/PduCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 190
    sget-object v3, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 191
    .local v0, "match":I
    const/4 v2, 0x0

    .line 193
    .local v2, "normalizedKey":Landroid/net/Uri;
    packed-switch v0, :pswitch_data_0

    .line 205
    :pswitch_0
    const/4 v3, 0x0

    .line 211
    :goto_0
    return-object v3

    .line 195
    :pswitch_1
    move-object v2, p1

    .line 208
    :goto_1
    sget-boolean v3, Lcom/motorola/messaging/pdu/util/PduCache;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 209
    const-string v3, "PduCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    .line 211
    goto :goto_0

    .line 201
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "msgId":Ljava/lang/String;
    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 203
    goto :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private purgeByMessageBox(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "msgBoxId"    # Ljava/lang/Integer;

    .prologue
    .line 215
    sget-boolean v4, Lcom/motorola/messaging/pdu/util/PduCache;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 216
    const-string v4, "PduCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purge cache in message box: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    if-eqz p1, :cond_2

    .line 220
    iget-object v4, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 221
    .local v3, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 223
    .local v2, "key":Landroid/net/Uri;
    iget-object v4, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-super {p0, v2}, Lcom/motorola/messaging/pdu/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 225
    .local v0, "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0, v2, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)V

    goto :goto_0

    .line 231
    .end local v0    # "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Landroid/net/Uri;
    .end local v3    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_2
    return-void
.end method

.method private purgeByThreadId(J)V
    .locals 7
    .param p1, "threadId"    # J

    .prologue
    .line 241
    sget-boolean v4, Lcom/motorola/messaging/pdu/util/PduCache;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 242
    const-string v4, "PduCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purge cache in thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 246
    .local v3, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_2

    .line 247
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 248
    .local v2, "key":Landroid/net/Uri;
    iget-object v4, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 249
    invoke-super {p0, v2}, Lcom/motorola/messaging/pdu/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 250
    .local v0, "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0, v2, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)V

    goto :goto_0

    .line 255
    .end local v0    # "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private purgeSingleEntry(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .locals 2
    .param p1, "key"    # Landroid/net/Uri;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 167
    invoke-super {p0, p1}, Lcom/motorola/messaging/pdu/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 168
    .local v0, "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)V

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)V

    .line 173
    .end local v0    # "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :goto_0
    return-object v0

    .restart local v0    # "entry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFromMessageBoxes(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)V
    .locals 4
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;->getMessageBox()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 259
    .local v0, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    return-void
.end method

.method private removeFromThreads(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)V
    .locals 4
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 235
    .local v0, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized isUpdating(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized purge(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 136
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/motorola/messaging/pdu/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 137
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    move-object v2, v3

    .line 161
    :goto_0
    monitor-exit p0

    return-object v2

    .line 139
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-result-object v2

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "msgId":Ljava/lang/String;
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-result-object v2

    goto :goto_0

    .line 149
    .end local v1    # "msgId":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/util/PduCache;->purgeAll()V

    move-object v2, v3

    .line 150
    goto :goto_0

    .line 155
    :pswitch_3
    sget-object v2, Lcom/motorola/messaging/pdu/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/util/PduCache;->purgeByMessageBox(Ljava/lang/Integer;)V

    move-object v2, v3

    .line 156
    goto :goto_0

    .line 158
    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/motorola/messaging/pdu/util/PduCache;->purgeByThreadId(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 159
    goto :goto_0

    .line 136
    .end local v0    # "match":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/util/PduCache;->purge(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized purgeAll()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/messaging/pdu/util/AbstractCache;->purgeAll()V

    .line 180
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 181
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 182
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)Z
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;->getMessageBox()I

    move-result v2

    .line 99
    .local v2, "msgBoxId":I
    iget-object v7, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 100
    .local v1, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 102
    .restart local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;->getThreadId()J

    move-result-wide v5

    .line 106
    .local v5, "threadId":J
    iget-object v7, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 107
    .local v4, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v4, :cond_1

    .line 108
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 109
    .restart local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/util/PduCache;->normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "finalKey":Landroid/net/Uri;
    invoke-super {p0, v0, p2}, Lcom/motorola/messaging/pdu/util/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 114
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return v3

    .line 98
    .end local v0    # "finalKey":Landroid/net/Uri;
    .end local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v2    # "msgBoxId":I
    .end local v3    # "result":Z
    .end local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v5    # "threadId":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/pdu/util/PduCache;->put(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setUpdating(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "updating"    # Z

    .prologue
    .line 123
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/pdu/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
