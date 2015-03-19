.class public Lcom/android/settings/MotDeviceAdminAdd;
.super Landroid/app/Activity;
.source "MotDeviceAdminAdd.java"


# instance fields
.field private has_android_policy:Z

.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mCancelButton:Landroid/widget/Button;

.field mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field mRefreshing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MotDeviceAdminAdd;->has_android_policy:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method private checkMotDeviceAdminReceiver(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Z
    .locals 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 118
    const/4 v5, 0x1

    .line 119
    .local v5, "result":Z
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    aput-object v7, v1, v6

    .line 121
    .local v1, "actions":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 122
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/MotDeviceAdminAdd;->lookupAction(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    const-string v6, "MotDeviceAdminAdd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing action filter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v5, 0x0

    .line 121
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return v5
.end method

.method private lookupAction(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v5, "startupApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 101
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 102
    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    const/4 v6, 0x1

    .line 107
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v6
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 323
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 397
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 400
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 139
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x10000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 143
    const-string v7, "MotDeviceAdminAdd"

    const-string v8, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 288
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.motorola.app.extra.DEVICE_ADMIN"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 150
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 151
    const-string v7, "MotDeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No component specified in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/android/settings/MotDeviceAdminAdd;->checkMotDeviceAdminReceiver(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    const-string v7, "MotDeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Component does not filter correct actions "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 159
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "MotDeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 174
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 175
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 177
    :try_start_1
    new-instance v7, Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-direct {v7, p0, v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 191
    const-string v7, "com.motorola.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    .line 193
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v7, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 194
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v4

    .line 195
    .local v4, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 196
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    .line 197
    .local v5, "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget v8, v5, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v7, v1, v8}, Lcom/motorola/motepm/MotDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 198
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    .line 202
    .end local v5    # "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    if-nez v7, :cond_5

    .line 204
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 178
    .end local v3    # "i":I
    .end local v4    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    :catch_1
    move-exception v2

    .line 179
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "MotDeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 182
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "MotDeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 195
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    .restart local v5    # "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    .end local v3    # "i":I
    .end local v4    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    .end local v5    # "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.motorola.app.extra.ADD_EXPLANATION"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 212
    const v7, 0x7f040036

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 214
    const v7, 0x7f08006c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 215
    const v7, 0x7f08006d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 216
    const v7, 0x7f08006e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 218
    const v7, 0x7f080070

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 219
    const v7, 0x7f08006f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 220
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/MotDeviceAdminAdd$1;

    invoke-direct {v8, p0}, Lcom/android/settings/MotDeviceAdminAdd$1;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/settings/MotDeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 229
    const v7, 0x7f080071

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 230
    const v7, 0x7f080072

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 231
    const v7, 0x7f080023

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 232
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/MotDeviceAdminAdd$2;

    invoke-direct {v8, p0}, Lcom/android/settings/MotDeviceAdminAdd$2;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v7, 0x7f080074

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 238
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/MotDeviceAdminAdd$3;

    invoke-direct {v8, p0}, Lcom/android/settings/MotDeviceAdminAdd$3;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 315
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 300
    :pswitch_0
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 301
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 304
    const v2, 0x7f0b0526

    new-instance v3, Lcom/android/settings/MotDeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/MotDeviceAdminAdd$4;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    const v2, 0x7f0b0527

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->updateInterface()V

    .line 294
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 387
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 388
    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 389
    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 391
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    const v1, 0x1080271

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    return-void

    .line 387
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 388
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 389
    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    .line 391
    :cond_3
    const v1, 0x1080270

    goto :goto_3
.end method

.method updateInterface()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 328
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 338
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/motorola/motepm/MotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 345
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 346
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 347
    .local v3, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 348
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    .line 349
    .local v2, "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    iget v5, v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 351
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 334
    .end local v1    # "i":I
    .end local v2    # "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    .end local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    .end local v4    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 341
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 355
    :cond_1
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 356
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f0b06a3

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const v5, 0x7f0b069b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f0b069c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iput-boolean v10, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdding:Z

    .line 381
    :goto_3
    return-void

    .line 363
    :cond_2
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 364
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 365
    .restart local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 366
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    .line 367
    .restart local v2    # "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    iget v5, v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 369
    .restart local v4    # "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 373
    .end local v1    # "i":I
    .end local v2    # "pi":Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    .end local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 374
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 375
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f0b06a2

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v5, 0x7f0b069f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f0b06a0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iput-boolean v11, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdding:Z

    goto :goto_3
.end method
