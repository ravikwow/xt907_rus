.class Lcom/android/certinstaller/CertFileList$SdCardMonitor;
.super Ljava/lang/Object;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardMonitor"
.end annotation


# instance fields
.field mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/certinstaller/CertFileList;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList;)V
    .locals 5

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mMonitors:Ljava/util/ArrayList;

    .line 173
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 174
    .local v1, "root":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->addMonitor(Ljava/io/File;)V

    .line 178
    new-instance v3, Ljava/io/File;

    const-string v4, "download"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->addMonitor(Ljava/io/File;)V

    .line 181
    :cond_1
    const-string v3, "SECONDARY_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "extPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Ljava/io/File;

    .end local v1    # "root":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v1    # "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->addMonitor(Ljava/io/File;)V

    .line 186
    new-instance v3, Ljava/io/File;

    const-string v4, "download"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->addMonitor(Ljava/io/File;)V

    .line 189
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/certinstaller/CertFileList$SdCardMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/certinstaller/CertFileList$SdCardMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private addMonitor(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mMonitors:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .locals 2
    .param p1, "evt"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 202
    sparse-switch p1, :sswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 205
    :sswitch_0
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-virtual {v0, p2}, Lcom/android/certinstaller/CertFile;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    new-instance v1, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method startWatching()V
    .locals 3

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileObserver;

    .line 219
    .local v1, "monitor":Landroid/os/FileObserver;
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 222
    .end local v1    # "monitor":Landroid/os/FileObserver;
    :cond_0
    return-void
.end method

.method stopWatching()V
    .locals 3

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileObserver;

    .line 227
    .local v1, "monitor":Landroid/os/FileObserver;
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_0

    .line 230
    .end local v1    # "monitor":Landroid/os/FileObserver;
    :cond_0
    return-void
.end method
