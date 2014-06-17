.class public abstract Lcom/android/mms/transaction/AbstractRetryScheme;
.super Ljava/lang/Object;
.source "AbstractRetryScheme.java"


# instance fields
.field protected mErrorType:I

.field protected mRetriedTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "retriedTimes"    # I

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(II)V

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "retriedTimes"    # I
    .param p2, "errorType"    # I

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 39
    iput p2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mErrorType:I

    .line 40
    return-void
.end method
