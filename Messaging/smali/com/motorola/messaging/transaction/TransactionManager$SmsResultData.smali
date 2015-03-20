.class public Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/TransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsResultData"
.end annotation


# instance fields
.field public destsSetId:I

.field public errorCode:I

.field public noOfDestinations:I

.field public noOfSegments:I

.field public resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
