.class Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/pdu/util/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field hit:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;, "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/pdu/util/AbstractCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/pdu/util/AbstractCache$1;

    .prologue
    .line 108
    .local p0, "this":Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;, "Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry<TV;>;"
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/util/AbstractCache$CacheEntry;-><init>()V

    return-void
.end method
