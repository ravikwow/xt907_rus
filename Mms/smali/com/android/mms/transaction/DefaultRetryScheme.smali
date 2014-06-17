.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# instance fields
.field private mRetryLimit:I

.field private sDefaultRetryScheme:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorType"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;II)V

    .line 44
    invoke-direct {p0}, Lcom/android/mms/transaction/DefaultRetryScheme;->loadRetryTimes()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retriedTimes"    # I
    .param p3, "errorType"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(II)V

    .line 34
    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetryLimit:I

    .line 35
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    .line 54
    invoke-direct {p0}, Lcom/android/mms/transaction/DefaultRetryScheme;->loadRetryTimes()V

    .line 56
    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 57
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    iget-object v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 59
    return-void

    .line 56
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_1

    .line 35
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getConfiguredRetryLimit()I
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 87
    :cond_0
    return v0

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadRetryTimes()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRetryTimeout1()I

    move-result v2

    aput v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRetryTimeout2()I

    move-result v2

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRetryTimeout3()I

    move-result v2

    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRetryTimeout4()I

    move-result v2

    aput v2, v0, v1

    .line 70
    invoke-direct {p0}, Lcom/android/mms/transaction/DefaultRetryScheme;->getConfiguredRetryLimit()I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetryLimit:I

    .line 71
    return-void
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetryLimit:I

    return v0
.end method

.method public getWaitingInterval()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
