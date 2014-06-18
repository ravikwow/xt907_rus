.class Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadManagerContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 129
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    # invokes: Lcom/android/providers/downloads/DownloadService;->enqueueUpdate()V
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V

    .line 134
    return-void
.end method
