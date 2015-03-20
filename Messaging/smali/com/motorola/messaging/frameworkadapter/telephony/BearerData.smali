.class public Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# static fields
.field public static ERROR_NONE:I

.field public static STATUS_ACCEPTED:I

.field public static STATUS_DELIVERED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    sput v1, Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;->ERROR_NONE:I

    .line 5
    const/4 v0, 0x2

    sput v0, Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;->STATUS_DELIVERED:I

    .line 6
    sput v1, Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;->STATUS_ACCEPTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
