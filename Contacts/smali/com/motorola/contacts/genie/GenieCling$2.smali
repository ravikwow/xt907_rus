.class Lcom/motorola/contacts/genie/GenieCling$2;
.super Ljava/lang/Object;
.source "GenieCling.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/genie/GenieCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/genie/GenieCling;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/genie/GenieCling;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieCling$2;->this$0:Lcom/motorola/contacts/genie/GenieCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method