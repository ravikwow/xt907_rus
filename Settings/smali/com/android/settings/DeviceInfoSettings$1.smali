.class Lcom/android/settings/DeviceInfoSettings$1;
.super Landroid/os/AsyncTask;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->updateHardwareInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dispSize:Ljava/lang/String;

.field private dispType:Ljava/lang/String;

.field private displayInfo:Ljava/lang/String;

.field private emmcInfo:Ljava/lang/String;

.field private ramInfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 1

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    .line 534
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    .line 535
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->displayInfo:Ljava/lang/String;

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    .line 537
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 532
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 541
    iget-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v10}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 543
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 545
    new-instance v5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 546
    .local v5, "memReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 547
    const/4 v10, 0x1

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    invoke-static {v10, v11, v12, v0}, Lcom/android/settings/Utils;->getReadableSize(ZJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    .line 550
    new-instance v6, Lcom/android/settings/EMMCInfoReader;

    invoke-direct {v6}, Lcom/android/settings/EMMCInfoReader;-><init>()V

    .line 551
    .local v6, "reader":Lcom/android/settings/EMMCInfoReader;
    invoke-virtual {v6}, Lcom/android/settings/EMMCInfoReader;->readEMMCInfo()V

    .line 552
    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/android/settings/EMMCInfoReader;->getTotalSize()J

    move-result-wide v11

    invoke-static {v10, v11, v12, v0}, Lcom/android/settings/Utils;->getReadableSize(ZJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    .line 556
    .end local v5    # "memReader":Lcom/android/internal/util/MemInfoReader;
    .end local v6    # "reader":Lcom/android/settings/EMMCInfoReader;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v10}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 557
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 558
    .local v9, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 559
    .local v2, "height":I
    const/4 v3, 0x0

    .line 561
    .local v3, "mBarSize":I
    const-string v10, "window"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 563
    .local v4, "mWindowManager":Landroid/view/IWindowManager;
    const/4 v8, 0x1

    .line 566
    .local v8, "showNav":Z
    :try_start_0
    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 571
    :goto_0
    if-eqz v8, :cond_1

    .line 572
    iget-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v10}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 573
    .local v7, "res":Landroid/content/res/Resources;
    if-lt v9, v2, :cond_2

    .line 574
    const v10, 0x105000f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 575
    add-int/2addr v9, v3

    .line 584
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v10}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b00eb

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    .line 587
    invoke-static {v9, v2}, Lcom/android/settings/Utils;->getDisplayType(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispType:Ljava/lang/String;

    .line 589
    const/4 v10, 0x0

    return-object v10

    .line 578
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_2
    const v10, 0x105000d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 579
    add-int/2addr v2, v3

    goto :goto_1

    .line 568
    .end local v7    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 532
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 594
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "hardware_information"

    invoke-virtual {v5, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 595
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "ram_info"

    invoke-virtual {v5, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 596
    .local v3, "ramPref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "emmc_info"

    invoke-virtual {v5, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 597
    .local v1, "emmcPref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "display_info"

    invoke-virtual {v5, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 599
    .local v0, "displayPref":Landroid/preference/Preference;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 600
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 605
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 609
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispType:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "summary":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v4    # "summary":Ljava/lang/String;
    :goto_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 620
    return-void

    .line 602
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 615
    :catch_0
    move-exception v5

    goto :goto_3

    .line 607
    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 610
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 614
    :cond_3
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
