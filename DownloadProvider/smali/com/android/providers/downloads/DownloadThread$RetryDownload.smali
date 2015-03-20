.class Lcom/android/providers/downloads/DownloadThread$RetryDownload;
.super Ljava/lang/Throwable;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryDownload"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadThread;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/DownloadThread;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread$RetryDownload;->this$0:Lcom/android/providers/downloads/DownloadThread;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/DownloadThread;Lcom/android/providers/downloads/DownloadThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/downloads/DownloadThread;
    .param p2, "x1"    # Lcom/android/providers/downloads/DownloadThread$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread$RetryDownload;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    return-void
.end method
