.class public Lcom/android/mms/transaction/RetryScheduler$RetryData;
.super Ljava/lang/Object;
.source "RetryScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/RetryScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryData"
.end annotation


# instance fields
.field public current:J

.field public dueTime:J

.field public errorType:I

.field public id:J

.field public isDownload:Z

.field public lastTry:J

.field public msgType:I

.field public responseStatus:I

.field public retrieveStatus:I

.field public retryIndex:I

.field public retryLimit:I

.field public threadId:J

.field public waitingInterval:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
