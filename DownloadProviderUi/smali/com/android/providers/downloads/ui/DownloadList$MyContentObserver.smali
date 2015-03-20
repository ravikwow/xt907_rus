.class Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->handleDownloadsChanged()V

    .line 193
    return-void
.end method
