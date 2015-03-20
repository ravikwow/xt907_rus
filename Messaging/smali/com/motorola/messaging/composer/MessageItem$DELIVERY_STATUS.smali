.class public final enum Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
.super Ljava/lang/Enum;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DELIVERY_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

.field public static final enum FAILED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

.field public static final enum NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

.field public static final enum PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

.field public static final enum RECEIVED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

.field public static final enum REJECTED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->FAILED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->RECEIVED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v6}, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->REJECTED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->FAILED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->RECEIVED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->REJECTED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->$VALUES:[Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->$VALUES:[Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    return-object v0
.end method
