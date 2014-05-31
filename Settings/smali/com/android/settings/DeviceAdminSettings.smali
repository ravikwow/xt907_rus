.class public Lcom/android/settings/DeviceAdminSettings;
.super Landroid/app/ListFragment;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;,
        Lcom/android/settings/DeviceAdminSettings$PolicyListItem;
    }
.end annotation


# instance fields
.field final mActiveAdmins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DeviceAdminSettings$PolicyListItem;",
            ">;"
        }
    .end annotation
.end field

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceOwnerPkg:Ljava/lang/String;

.field private mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceAdminSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceAdminSettings;)Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceAdminSettings;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 98
    const v2, 0x7f040035

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;

    .line 213
    iget-boolean v1, v0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->bIsMotPolicy:Z

    if-eqz v1, :cond_1

    .line 215
    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->motAdminInfo:Lcom/motorola/motepm/MotDeviceAdminInfo;

    .line 217
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->isAdminLocked(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/motepm/util/ExternalResources;->getInstance(Landroid/content/Context;)Lcom/motorola/motepm/util/ExternalResources;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 223
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 224
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10803b1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/motepm/service/R$string;->motdpm_notification_title_policy_enforcement:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v1, v4}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    sget-object v4, Lcom/motorola/motepm/service/R$string;->motdpm_policy_notification_lock_admin:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v1, v4}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 234
    const v2, 0x7f040035

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/MotDeviceAdminAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    const-string v2, "com.motorola.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->adminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 244
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 109
    return-void
.end method

.method updateList()V
    .locals 27

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->clear()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v12

    .line 114
    .local v12, "cur":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v12, :cond_0

    .line 115
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v24, v0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 120
    .end local v16    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/motepm/MotDevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v13

    .line 124
    .local v13, "cur2":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v13, :cond_1

    .line 125
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v24, v0

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 132
    .end local v16    # "i":I
    :cond_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 135
    .local v8, "availAdminSet":Ljava/util/HashSet;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    new-instance v25, Landroid/content/Intent;

    const-string v26, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x80

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 138
    .local v7, "avail2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_4

    const/4 v11, 0x0

    .line 139
    .local v11, "count2":I
    :goto_2
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v11, :cond_5

    .line 140
    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v21, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v14, Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 143
    .local v14, "dpi":Lcom/motorola/motepm/MotDeviceAdminInfo;
    invoke-virtual {v14}, Lcom/motorola/motepm/MotDeviceAdminInfo;->isVisible()Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual {v14}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 145
    :cond_2
    invoke-virtual {v14}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v18, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;-><init>(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;Lcom/motorola/motepm/MotDeviceAdminInfo;Z)V

    .line 148
    .local v18, "item":Lcom/android/settings/DeviceAdminSettings$PolicyListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v14    # "dpi":Lcom/motorola/motepm/MotDeviceAdminInfo;
    .end local v18    # "item":Lcom/android/settings/DeviceAdminSettings$PolicyListItem;
    :cond_3
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 138
    .end local v11    # "count2":I
    .end local v16    # "i":I
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_2

    .line 150
    .restart local v11    # "count2":I
    .restart local v16    # "i":I
    .restart local v21    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v15

    .line 151
    .local v15, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v24, "DeviceAdminSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skipping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 152
    .end local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v15

    .line 153
    .local v15, "e":Ljava/io/IOException;
    const-string v24, "DeviceAdminSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skipping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 158
    .end local v15    # "e":Ljava/io/IOException;
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v26, 0x8080

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 161
    .local v5, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_6

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 167
    :cond_6
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 168
    .local v4, "activeAdminsNotInAvail":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 169
    .restart local v21    # "ri":Landroid/content/pm/ResolveInfo;
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v22, "riComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 173
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v22    # "riComponentName":Landroid/content/ComponentName;
    :cond_7
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_a

    .line 174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v6, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 176
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ComponentName;

    .line 177
    .local v23, "unlistedActiveAdmin":Landroid/content/ComponentName;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v24

    const v25, 0x8080

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 181
    .local v20, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v20, :cond_8

    .line 182
    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .end local v20    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "unlistedActiveAdmin":Landroid/content/ComponentName;
    :cond_9
    move-object v5, v6

    .line 187
    .end local v6    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    const/16 v16, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "count":I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v10, :cond_d

    .line 188
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 190
    .restart local v21    # "ri":Landroid/content/pm/ResolveInfo;
    :try_start_1
    new-instance v14, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 192
    .local v14, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v14}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 193
    .local v9, "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    invoke-virtual {v14}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v24

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 195
    :cond_b
    new-instance v18, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;-><init>(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;Lcom/motorola/motepm/MotDeviceAdminInfo;Z)V

    .line 196
    .restart local v18    # "item":Lcom/android/settings/DeviceAdminSettings$PolicyListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 187
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v14    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v18    # "item":Lcom/android/settings/DeviceAdminSettings$PolicyListItem;
    :cond_c
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 199
    :catch_2
    move-exception v15

    .line 200
    .local v15, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v24, "DeviceAdminSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skipping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 201
    .end local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v15

    .line 202
    .local v15, "e":Ljava/io/IOException;
    const-string v24, "DeviceAdminSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skipping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 206
    .end local v15    # "e":Ljava/io/IOException;
    .end local v21    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v24

    new-instance v25, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    return-void
.end method
