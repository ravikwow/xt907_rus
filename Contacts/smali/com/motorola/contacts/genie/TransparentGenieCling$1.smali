.class Lcom/motorola/contacts/genie/TransparentGenieCling$1;
.super Ljava/lang/Object;
.source "TransparentGenieCling.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/genie/TransparentGenieCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/genie/TransparentGenieCling;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/genie/TransparentGenieCling;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/motorola/contacts/genie/TransparentGenieCling$1;->this$0:Lcom/motorola/contacts/genie/TransparentGenieCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
