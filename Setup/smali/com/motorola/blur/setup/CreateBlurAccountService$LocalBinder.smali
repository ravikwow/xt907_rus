.class public Lcom/motorola/blur/setup/CreateBlurAccountService$LocalBinder;
.super Landroid/os/Binder;
.source "CreateBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBlurAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$LocalBinder;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/motorola/blur/setup/CreateBlurAccountService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$LocalBinder;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    return-object v0
.end method
