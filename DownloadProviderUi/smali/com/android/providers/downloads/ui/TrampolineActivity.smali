.class public Lcom/android/providers/downloads/ui/TrampolineActivity;
.super Landroid/app/Activity;
.source "TrampolineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;,
        Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 168
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "extra_click_download_ids"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 57
    .local v2, id:J
    const-string v6, "download"

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/TrampolineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 58
    .local v1, dm:Landroid/app/DownloadManager;
    invoke-virtual {v1, v7}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 63
    new-instance v6, Landroid/app/DownloadManager$Query;

    invoke-direct {v6}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v7, v7, [J

    aput-wide v2, v7, v9

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    const-string v6, "status"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 67
    .local v5, status:I
    const-string v6, "reason"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 74
    .local v4, reason:I
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 77
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sparse-switch v5, :sswitch_data_0

    .line 106
    .end local v4           #reason:I
    .end local v5           #status:I
    :goto_0
    return-void

    .line 69
    :cond_0
    const v6, 0x7f07000f

    const/4 v7, 0x0

    :try_start_1
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 81
    .restart local v4       #reason:I
    .restart local v5       #status:I
    :sswitch_0
    invoke-direct {p0, v2, v3}, Lcom/android/providers/downloads/ui/TrampolineActivity;->sendRunningDownloadClickedBroadcast(J)V

    .line 82
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->finish()V

    goto :goto_0

    .line 86
    :sswitch_1
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;->show(Landroid/app/FragmentManager;J)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/providers/downloads/ui/TrampolineActivity;->sendRunningDownloadClickedBroadcast(J)V

    .line 90
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->finish()V

    goto :goto_0

    .line 95
    :sswitch_2
    invoke-static {p0, v2, v3, v9}, Lcom/android/providers/downloads/OpenHelper;->startViewIntent(Landroid/content/Context;JI)Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    const v6, 0x7f070015

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->finish()V

    goto :goto_0

    .line 103
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v2, v3, v4}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->show(Landroid/app/FragmentManager;JI)V

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method
