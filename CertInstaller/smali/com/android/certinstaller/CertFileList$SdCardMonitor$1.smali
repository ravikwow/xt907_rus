.class Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;
.super Landroid/os/FileObserver;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertFileList$SdCardMonitor;->addMonitor(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;->this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "evt"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;->this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    # invokes: Lcom/android/certinstaller/CertFileList$SdCardMonitor;->commonHandler(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->access$000(Lcom/android/certinstaller/CertFileList$SdCardMonitor;ILjava/lang/String;)V

    .line 196
    return-void
.end method
