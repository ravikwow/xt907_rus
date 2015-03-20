.class public final enum Lcom/motorola/messaging/settings/CustomerManager$Customer;
.super Ljava/lang/Enum;
.source "CustomerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/settings/CustomerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Customer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/settings/CustomerManager$Customer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/settings/CustomerManager$Customer;

.field public static final enum NONE:Lcom/motorola/messaging/settings/CustomerManager$Customer;

.field public static final enum UNKNOWN:Lcom/motorola/messaging/settings/CustomerManager$Customer;

.field public static final enum USC:Lcom/motorola/messaging/settings/CustomerManager$Customer;

.field public static final enum VERIZON:Lcom/motorola/messaging/settings/CustomerManager$Customer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/settings/CustomerManager$Customer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->NONE:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    new-instance v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/settings/CustomerManager$Customer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->UNKNOWN:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    new-instance v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;

    const-string v1, "VERIZON"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/settings/CustomerManager$Customer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->VERIZON:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    new-instance v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;

    const-string v1, "USC"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/settings/CustomerManager$Customer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->USC:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/messaging/settings/CustomerManager$Customer;

    sget-object v1, Lcom/motorola/messaging/settings/CustomerManager$Customer;->NONE:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/settings/CustomerManager$Customer;->UNKNOWN:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/settings/CustomerManager$Customer;->VERIZON:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/settings/CustomerManager$Customer;->USC:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->$VALUES:[Lcom/motorola/messaging/settings/CustomerManager$Customer;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/settings/CustomerManager$Customer;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/settings/CustomerManager$Customer;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->$VALUES:[Lcom/motorola/messaging/settings/CustomerManager$Customer;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/settings/CustomerManager$Customer;

    return-object v0
.end method
