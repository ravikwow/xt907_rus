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
    .line 352
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->displayInfo:Ljava/lang/String;

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 362
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 363
    .local v4, "memReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 364
    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getReadableSize(ZJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    .line 367
    new-instance v5, Lcom/android/settings/EMMCInfoReader;

    invoke-direct {v5}, Lcom/android/settings/EMMCInfoReader;-><init>()V

    .line 368
    .local v5, "reader":Lcom/android/settings/EMMCInfoReader;
    invoke-virtual {v5}, Lcom/android/settings/EMMCInfoReader;->readEMMCInfo()V

    .line 369
    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/android/settings/EMMCInfoReader;->getTotalSize()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getReadableSize(ZJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    .line 372
    iget-object v9, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 373
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 374
    .local v8, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 375
    .local v1, "height":I
    const/4 v2, 0x0

    .line 377
    .local v2, "mBarSize":I
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 379
    .local v3, "mWindowManager":Landroid/view/IWindowManager;
    const/4 v7, 0x1

    .line 382
    .local v7, "showNav":Z
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 387
    :goto_0
    if-eqz v7, :cond_0

    .line 388
    iget-object v9, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 389
    .local v6, "res":Landroid/content/res/Resources;
    if-lt v8, v1, :cond_1

    .line 390
    const v9, 0x105000d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 391
    add-int/2addr v8, v2

    .line 399
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    .line 402
    invoke-static {v8, v1}, Lcom/android/settings/Utils;->getDisplayType(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispType:Ljava/lang/String;

    .line 404
    const/4 v9, 0x0

    return-object v9

    .line 394
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    const v9, 0x105000b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 395
    add-int/2addr v1, v2

    goto :goto_1

    .line 384
    .end local v6    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 409
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "hardware_information"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 410
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "ram_info"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 411
    .local v3, "ramPref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "emmc_info"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 412
    .local v1, "emmcPref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v6, "display_info"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 414
    .local v0, "displayPref":Landroid/preference/Preference;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->ramInfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 420
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->emmcInfo:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettings$1;->dispSize:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 425
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

    .line 426
    .local v4, "summary":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v4    # "summary":Ljava/lang/String;
    :goto_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 435
    return-void

    .line 417
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 430
    :catch_0
    move-exception v5

    goto :goto_3

    .line 422
    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 425
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

    .line 429
    :cond_3
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
