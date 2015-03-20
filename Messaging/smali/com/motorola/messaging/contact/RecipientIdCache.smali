.class public Lcom/motorola/messaging/contact/RecipientIdCache;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/contact/RecipientIdCache$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static sAllCanonical:Landroid/net/Uri;

.field private static sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

.field private static sSingleCanonicalAddressUri:Landroid/net/Uri;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/contact/RecipientIdCache;->DEBUG:Z

    .line 24
    sget-boolean v0, Lcom/motorola/messaging/contact/RecipientIdCache;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/contact/RecipientIdCache;->LOCAL_LOG:Z

    .line 27
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/contact/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    .line 30
    const-string v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/contact/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/motorola/messaging/contact/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/contact/RecipientIdCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/contact/RecipientIdCache;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/motorola/messaging/contact/RecipientIdCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public static fill()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 66
    sget-object v1, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v0, v1, Lcom/motorola/messaging/contact/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/contact/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 70
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 72
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    sget-object v1, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v1, v1, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 76
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 79
    .local v8, "id":J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "number":Ljava/lang/String;
    sget-object v1, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v1, v1, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v8    # "id":J
    .end local v10    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :catchall_1
    move-exception v1

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1

    .line 82
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 90
    :goto_1
    return-void

    .line 88
    :cond_1
    const-string v1, "Mms/Cache"

    const-string v2, "Cursor is null at RecipientIdCache!"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "spaceSepIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/contact/RecipientIdCache$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v11, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    monitor-enter v11

    .line 94
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v9, "numbers":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/contact/RecipientIdCache$Entry;>;"
    const-string v10, " "

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "ids":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .local v3, "id":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 106
    .local v6, "longId":J
    :try_start_2
    sget-object v10, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v10, v10, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 108
    .local v8, "number":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 109
    const-string v10, "Mms/Cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RecipientId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not in cache!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/motorola/messaging/contact/RecipientIdCache;->dump()V

    .line 111
    invoke-static {}, Lcom/motorola/messaging/contact/RecipientIdCache;->fill()V

    .line 112
    sget-object v10, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v10, v10, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "number":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 115
    .restart local v8    # "number":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 116
    const-string v10, "Mms/Cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RecipientId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has empty number!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAnonymousRecipientPrompt()Ljava/lang/String;

    move-result-object v8

    .line 120
    :cond_1
    new-instance v10, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;

    invoke-direct {v10, v6, v7, v8}, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v6    # "longId":J
    .end local v8    # "number":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 122
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    monitor-exit v11

    return-object v9

    .line 123
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "ids":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v9    # "numbers":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/contact/RecipientIdCache$Entry;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v1, Lcom/motorola/messaging/contact/RecipientIdCache;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/contact/RecipientIdCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    .line 51
    new-instance v0, Lcom/motorola/messaging/contact/RecipientIdCache$1;

    invoke-direct {v0}, Lcom/motorola/messaging/contact/RecipientIdCache$1;-><init>()V

    .line 57
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "recipientIdCache_init"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private updateCanonicalAddressInDb(JLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v4, Lcom/motorola/messaging/contact/RecipientIdCache;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 161
    const-string v4, "Mms/Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RecipientIdCache] updateCanonicalAddressInDb: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "address"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "_id"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    sget-object v4, Lcom/motorola/messaging/contact/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 173
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/motorola/messaging/contact/RecipientIdCache$2;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/motorola/messaging/contact/RecipientIdCache$2;-><init>(Lcom/motorola/messaging/contact/RecipientIdCache;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    .line 180
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v4

    const-string v5, "update_canonical"

    invoke-virtual {v4, v1, v5}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static updateNumbers(JLcom/motorola/messaging/contact/ContactList;)V
    .locals 9
    .param p0, "threadId"    # J
    .param p2, "contacts"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 127
    const-wide/16 v4, 0x0

    .line 129
    .local v4, "recipientId":J
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 130
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isAddressModified()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/motorola/messaging/contact/Contact;->setIsAddressModified(Z)V

    .line 137
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getRecipientId()J

    move-result-wide v4

    .line 138
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "number1":Ljava/lang/String;
    sget-object v6, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v6, v6, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "number2":Ljava/lang/String;
    sget-boolean v6, Lcom/motorola/messaging/contact/RecipientIdCache;->LOCAL_LOG:Z

    if-eqz v6, :cond_1

    .line 146
    const-string v6, "Mms/Cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RecipientIdCache] updateNumbers: comparing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    sget-object v6, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    iget-object v6, v6, Lcom/motorola/messaging/contact/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v6, Lcom/motorola/messaging/contact/RecipientIdCache;->sInstance:Lcom/motorola/messaging/contact/RecipientIdCache;

    invoke-direct {v6, v4, v5, v2}, Lcom/motorola/messaging/contact/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v2    # "number1":Ljava/lang/String;
    .end local v3    # "number2":Ljava/lang/String;
    :cond_2
    return-void
.end method
