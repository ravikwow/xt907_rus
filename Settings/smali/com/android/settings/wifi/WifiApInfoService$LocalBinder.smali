.class public Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;
.super Landroid/os/Binder;
.source "WifiApInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
