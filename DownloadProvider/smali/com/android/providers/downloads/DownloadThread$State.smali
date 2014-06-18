.class Lcom/android/providers/downloads/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mBytesNotified:J

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field public mContentLocation:Ljava/lang/String;

.field public mContinuingDownload:Z

.field public mCurrentBytes:J

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mHeaderETag:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNetworkType:I

.field public mRedirectionCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mSpeed:J

.field public mSpeedSampleBytes:J

.field public mSpeedSampleStart:J

.field public mTimeLastNotification:J

.field public mTotalBytes:J

.field public mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const-wide/16 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 128
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 130
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 131
    iput-wide v1, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 133
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 134
    iput-wide v1, p0, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 135
    iput-wide v1, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mNetworkType:I

    .line 145
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 153
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 156
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 157
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 158
    return-void
.end method


# virtual methods
.method public resetBeforeExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 163
    iput-object v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectionCount:I

    .line 166
    return-void
.end method
