.class Lcom/android/calendar/EventInfoFragment$17;
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
    .line 2763
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$17;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$17;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->saveICalEventToLocal()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$5400(Lcom/android/calendar/EventInfoFragment;)V

    .line 2767
    return-void
.end method
