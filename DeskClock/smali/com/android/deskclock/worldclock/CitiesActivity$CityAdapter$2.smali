.class Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;
.super Ljava/lang/Object;
.source "CitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

.field final synthetic val$holder:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iput-object p2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;->val$holder:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;->val$holder:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;

    iget-object v0, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->selected:Landroid/widget/CheckBox;

    .line 357
    .local v0, "b":Landroid/widget/CompoundButton;
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v1, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/deskclock/worldclock/CitiesActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 358
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 359
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$2;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v1, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    invoke-static {v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1500(Lcom/android/deskclock/worldclock/CitiesActivity;)Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->refreshSelectedCities()V

    .line 360
    return-void
.end method
