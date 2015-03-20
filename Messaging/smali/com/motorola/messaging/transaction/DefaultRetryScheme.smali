.class public Lcom/motorola/messaging/transaction/DefaultRetryScheme;
.super Lcom/motorola/messaging/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mRetryLimit:I

.field private sDefaultRetryScheme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->DEBUG:Z

    .line 31
    sget-boolean v0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retriedTimes"    # I
    .param p3, "errorType"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/transaction/AbstractRetryScheme;-><init>(II)V

    .line 33
    iput v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->mRetryLimit:I

    .line 34
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    .line 50
    sget-boolean v1, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "DefaultRetryScheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultRetryScheme, retriedTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->loadRetryTimes()V

    .line 56
    iget v1, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    if-gez v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 57
    iget v0, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    iget-object v1, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 59
    return-void

    .line 56
    :cond_1
    iget v0, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_1

    .line 34
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
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    aget v1, v1, v0

    if-nez v1, :cond_2

    .line 83
    :cond_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "DefaultRetryScheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguredRetryLimit, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    return v0

    .line 80
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadRetryTimes()V
    .locals 3

    .prologue
    .line 62
    sget-boolean v0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "DefaultRetryScheme"

    const-string v1, "loadRetryTimes"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getRetryTimeout1()I

    move-result v2

    aput v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getRetryTimeout2()I

    move-result v2

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getRetryTimeout3()I

    move-result v2

    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    const/4 v1, 0x4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getRetryTimeout4()I

    move-result v2

    aput v2, v0, v1

    .line 70
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->getConfiguredRetryLimit()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->mRetryLimit:I

    .line 71
    return-void
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->mRetryLimit:I

    return v0
.end method

.method public getWaitingInterval()J
    .locals 4

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "DefaultRetryScheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWaitingInterval, numRetries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v3, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/motorola/messaging/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
