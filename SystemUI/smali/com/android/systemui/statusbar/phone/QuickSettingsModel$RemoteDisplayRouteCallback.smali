.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayRouteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 303
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 307
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 311
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 315
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 319
    return-void
.end method
