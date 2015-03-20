.class Lcom/motorola/blur/setup/CreateBlurAccountCreator$6;
.super Ljava/lang/Object;
.source "CreateBlurAccountCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountCreator;->endProgressUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$6;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$6;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    .line 609
    return-void
.end method
