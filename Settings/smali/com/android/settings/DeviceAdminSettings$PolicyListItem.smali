.class Lcom/android/settings/DeviceAdminSettings$PolicyListItem;
.super Ljava/lang/Object;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyListItem"
.end annotation


# instance fields
.field public adminInfo:Landroid/app/admin/DeviceAdminInfo;

.field public bIsMotPolicy:Z

.field public motAdminInfo:Lcom/motorola/motepm/MotDeviceAdminInfo;

.field final synthetic this$0:Lcom/android/settings/DeviceAdminSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;Lcom/motorola/motepm/MotDeviceAdminInfo;Z)V
    .locals 1
    .param p2, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;
    .param p3, "motAdminInfo"    # Lcom/motorola/motepm/MotDeviceAdminInfo;
    .param p4, "isMot"    # Z

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->bIsMotPolicy:Z

    .line 73
    iput-boolean p4, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->bIsMotPolicy:Z

    .line 74
    iput-object p2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->adminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 75
    iput-object p3, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListItem;->motAdminInfo:Lcom/motorola/motepm/MotDeviceAdminInfo;

    .line 76
    return-void
.end method
