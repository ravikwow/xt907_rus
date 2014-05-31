.class public Lcom/android/settings/MotDeviceAdminAdd;
.super Landroid/app/Activity;
.source "MotDeviceAdminAdd.java"


# instance fields
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
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    .line 88
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
    .locals 8
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

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
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    const/4 v5, 0x1

    .line 107
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v5
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
    .line 322
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 323
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 401
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/MotDeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 404
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
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 139
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 143
    const-string v8, "MotDeviceAdminAdd"

    const-string v9, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    .line 289
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.motorola.app.extra.DEVICE_ADMIN"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 150
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 151
    const-string v8, "MotDeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No component specified in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    goto :goto_0

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/android/settings/MotDeviceAdminAdd;->checkMotDeviceAdminReceiver(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 168
    const-string v8, "MotDeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Component does not filter correct actions "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    goto :goto_0

    .line 159
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "MotDeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to retrieve device policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

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
    new-instance v8, Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-direct {v8, p0, v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 191
    const-string v8, "com.motorola.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 192
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    .line 193
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v8, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 194
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDevicePolicyManager;->getSupportedPolicies()Ljava/util/List;

    move-result-object v7

    .line 195
    .local v7, "supportedPolicies":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/motepm/MotPolicyInfo;>;"
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 196
    .local v4, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 197
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/motepm/MotPolicyInfo;

    .line 198
    .local v5, "pi":Lcom/motorola/motepm/MotPolicyInfo;
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget v9, v5, Lcom/motorola/motepm/MotPolicyInfo;->mId:I

    invoke-virtual {v8, v1, v9}, Lcom/motorola/motepm/MotDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 199
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    .line 203
    .end local v5    # "pi":Lcom/motorola/motepm/MotPolicyInfo;
    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    if-nez v8, :cond_5

    .line 205
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->setResult(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 178
    .end local v3    # "i":I
    .end local v4    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    .end local v7    # "supportedPolicies":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/motepm/MotPolicyInfo;>;"
    :catch_1
    move-exception v2

    .line 179
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "MotDeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to retrieve device policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 182
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "MotDeviceAdminAdd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to retrieve device policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    .restart local v5    # "pi":Lcom/motorola/motepm/MotPolicyInfo;
    .restart local v7    # "supportedPolicies":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/motepm/MotPolicyInfo;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    .end local v3    # "i":I
    .end local v4    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    .end local v5    # "pi":Lcom/motorola/motepm/MotPolicyInfo;
    .end local v7    # "supportedPolicies":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/motepm/MotPolicyInfo;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.motorola.app.extra.ADD_EXPLANATION"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 213
    const v8, 0x7f040033

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->setContentView(I)V

    .line 215
    const v8, 0x7f080076

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 216
    const v8, 0x7f080077

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 217
    const v8, 0x7f080078

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 219
    const v8, 0x7f08007a

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 220
    const v8, 0x7f080079

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 221
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    new-instance v9, Lcom/android/settings/MotDeviceAdminAdd$1;

    invoke-direct {v9, p0}, Lcom/android/settings/MotDeviceAdminAdd$1;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 230
    const v8, 0x7f08007b

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 231
    const v8, 0x7f08007c

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 232
    const v8, 0x7f08002b

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 233
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/MotDeviceAdminAdd$2;

    invoke-direct {v9, p0}, Lcom/android/settings/MotDeviceAdminAdd$2;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v8, 0x7f08007e

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 239
    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/MotDeviceAdminAdd$3;

    invoke-direct {v9, p0}, Lcom/android/settings/MotDeviceAdminAdd$3;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_0

    .line 316
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 301
    :pswitch_0
    const-string v2, "com.motorola.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 302
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 305
    const v2, 0x7f0b059d

    new-instance v3, Lcom/android/settings/MotDeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/MotDeviceAdminAdd$4;-><init>(Lcom/android/settings/MotDeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    const v2, 0x7f0b059e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->updateInterface()V

    .line 295
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 391
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 392
    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 393
    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 395
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    const v1, 0x1080273

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    return-void

    .line 391
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 392
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 393
    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    .line 395
    :cond_3
    const v1, 0x1080272

    goto :goto_3
.end method

.method updateInterface()V
    .locals 14

    .prologue
    const/16 v10, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 329
    invoke-static {p0}, Lcom/motorola/motepm/util/ExternalResources;->getInstance(Landroid/content/Context;)Lcom/motorola/motepm/util/ExternalResources;

    move-result-object v4

    .line 330
    .local v4, "res":Lcom/motorola/motepm/util/ExternalResources;
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v7}, Lcom/motorola/motepm/MotDevicePolicyManager;->getSupportedPolicies()Ljava/util/List;

    move-result-object v5

    .line 332
    .local v5, "supportedPolicies":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/motepm/MotPolicyInfo;>;"
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    .line 342
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/motorola/motepm/MotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 349
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 350
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v7, v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 351
    .local v3, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 352
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotPolicyInfo;

    .line 353
    .local v2, "pi":Lcom/motorola/motepm/MotPolicyInfo;
    iget-object v7, v2, Lcom/motorola/motepm/MotPolicyInfo;->mLabel:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v4, v7}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {p0, v7, v8, v13}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v6

    .line 355
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    .end local v1    # "i":I
    .end local v2    # "pi":Lcom/motorola/motepm/MotPolicyInfo;
    .end local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    .end local v6    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 345
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v7, v12}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 360
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v7, v10}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 361
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v8, 0x7f0b07a1

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/MotDeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const v7, 0x7f0b0799

    invoke-virtual {p0, v7}, Lcom/android/settings/MotDeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/MotDeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f0b079a

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iput-boolean v12, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdding:Z

    .line 386
    :goto_3
    return-void

    .line 367
    :cond_2
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 368
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v7, v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 369
    .restart local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 370
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotPolicyInfo;

    .line 371
    .restart local v2    # "pi":Lcom/motorola/motepm/MotPolicyInfo;
    const-string v7, "MotDeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Label = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/motorola/motepm/MotPolicyInfo;->mLabel:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Description = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/motorola/motepm/MotPolicyInfo;->mDescription:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v7, v2, Lcom/motorola/motepm/MotPolicyInfo;->mLabel:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v4, v7}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/motorola/motepm/MotPolicyInfo;->mDescription:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v4, v8}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8, v13}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v6

    .line 374
    .restart local v6    # "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 378
    .end local v1    # "i":I
    .end local v2    # "pi":Lcom/motorola/motepm/MotPolicyInfo;
    .end local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/motepm/MotPolicyInfo;>;"
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v7, v12}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 379
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v7, v10}, Lcom/android/settings/MotDeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 380
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v8, 0x7f0b07a0

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/MotDeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/MotDeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v7, 0x7f0b079d

    invoke-virtual {p0, v7}, Lcom/android/settings/MotDeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/MotDeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v7, p0, Lcom/android/settings/MotDeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f0b079e

    invoke-virtual {p0, v8}, Lcom/android/settings/MotDeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iput-boolean v13, p0, Lcom/android/settings/MotDeviceAdminAdd;->mAdding:Z

    goto/16 :goto_3
.end method
