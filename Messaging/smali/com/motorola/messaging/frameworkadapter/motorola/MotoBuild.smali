.class public Lcom/motorola/messaging/frameworkadapter/motorola/MotoBuild;
.super Ljava/lang/Object;
.source "MotoBuild.java"


# static fields
.field public static final CUSTOMERID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoBuild;->getCustomerid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotoBuild;->CUSTOMERID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCustomerid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7
    const-string v1, "ro.mot.build.customerid"

    invoke-static {v1}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "customerid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    const-string v1, "ro.product.brand"

    invoke-static {v1}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method
