.class Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;
.super Ljava/lang/Object;
.source "CertFileList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertFileList$SdCardMonitor;->commonHandler(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;->this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;->this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    iget-object v0, v0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    # invokes: Lcom/android/certinstaller/CertFileList;->createFileList()V
    invoke-static {v0}, Lcom/android/certinstaller/CertFileList;->access$100(Lcom/android/certinstaller/CertFileList;)V

    .line 209
    return-void
.end method
