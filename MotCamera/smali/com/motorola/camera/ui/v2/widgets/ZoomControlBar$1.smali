.class Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar$1;
.super Ljava/lang/Object;
.source "ZoomControlBar.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar$1;->this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliderBarActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 87
    return-void
.end method

.method public onSliderProgressChanged(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;I)V
    .locals 1
    .param p1, "sliderBar"    # Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;
    .param p2, "Progress"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar$1;->this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->performZoom(I)V

    .line 82
    return-void
.end method
