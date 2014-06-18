.class Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p2, "x1"    # Lcom/android/contacts/activities/ActionBarAdapter$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 282
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 283
    return-void
.end method
