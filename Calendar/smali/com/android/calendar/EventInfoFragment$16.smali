.class Lcom/android/calendar/EventInfoFragment$16;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->initExtendedProperties(Landroid/view/View;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 2744
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$16;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$16;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/calendar/EventInfoFragment;->destroyICalView(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/EventInfoFragment;->access$5300(Lcom/android/calendar/EventInfoFragment;ZZ)V

    .line 2748
    return-void
.end method
