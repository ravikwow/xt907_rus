.class Lcom/motorola/messaging/composer/MessageItem$Cache;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final LOCAL_LOG:Z


# instance fields
.field private final mMmsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/motorola/messaging/composer/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/motorola/messaging/composer/MessageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1435
    sput-boolean v0, Lcom/motorola/messaging/composer/MessageItem$Cache;->DEBUG:Z

    .line 1436
    sget-boolean v1, Lcom/motorola/messaging/composer/MessageItem$Cache;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/composer/MessageItem$Cache;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$Cache$1;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/motorola/messaging/composer/MessageItem$Cache$1;-><init>(Lcom/motorola/messaging/composer/MessageItem$Cache;IFZ)V

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mSmsCache:Ljava/util/Map;

    .line 1452
    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$Cache$2;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/motorola/messaging/composer/MessageItem$Cache$2;-><init>(Lcom/motorola/messaging/composer/MessageItem$Cache;IFZ)V

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mMmsCache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/composer/MessageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/composer/MessageItem$1;

    .prologue
    .line 1433
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$Cache;-><init>()V

    return-void
.end method

.method private dump()V
    .locals 0

    .prologue
    .line 1542
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mSmsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1509
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mMmsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1510
    return-void
.end method

.method public getItem(JLjava/lang/String;)Lcom/motorola/messaging/composer/MessageItem;
    .locals 4
    .param p1, "msgId"    # J
    .param p3, "msgType"    # Ljava/lang/String;

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$Cache;->dump()V

    .line 1464
    move-wide v0, p1

    .line 1465
    .local v0, "key":J
    const-string v2, "mms"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1466
    neg-long v0, v0

    .line 1467
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mMmsCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 1469
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mSmsCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    goto :goto_0
.end method

.method public putItem(JLcom/motorola/messaging/composer/MessageItem;)V
    .locals 2
    .param p1, "key"    # J
    .param p3, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 1513
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mMmsCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :goto_0
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$Cache;->dump()V

    .line 1519
    return-void

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mSmsCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeItem(J)Lcom/motorola/messaging/composer/MessageItem;
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 1482
    sget-boolean v0, Lcom/motorola/messaging/composer/MessageItem$Cache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1483
    const-string v0, "MessageItem-Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCache for single msg, key ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$Cache;->dump()V

    .line 1486
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mMmsCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/composer/MessageItem;

    .line 1489
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mSmsCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/composer/MessageItem;

    goto :goto_0
.end method

.method public removeItem(JLjava/lang/String;)Lcom/motorola/messaging/composer/MessageItem;
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "msgType"    # Ljava/lang/String;

    .prologue
    .line 1494
    sget-boolean v2, Lcom/motorola/messaging/composer/MessageItem$Cache;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1495
    const-string v2, "MessageItem-Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache for single msg, id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$Cache;->dump()V

    .line 1498
    :cond_0
    move-wide v0, p1

    .line 1499
    .local v0, "key":J
    const-string v2, "mms"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1500
    neg-long v0, v0

    .line 1501
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mMmsCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    .line 1503
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$Cache;->mSmsCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/MessageItem;

    goto :goto_0
.end method
