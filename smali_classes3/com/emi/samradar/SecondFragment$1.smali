.class Lcom/emi/samradar/SecondFragment$1;
.super Ljava/lang/Object;
.source "SecondFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emi/samradar/SecondFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emi/samradar/SecondFragment;

.field final synthetic val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;


# direct methods
.method constructor <init>(Lcom/emi/samradar/SecondFragment;Lcom/skyfishjy/library/RippleBackground;)V
    .locals 0
    .param p1, "this$0"    # Lcom/emi/samradar/SecondFragment;

    .line 36
    iput-object p1, p0, Lcom/emi/samradar/SecondFragment$1;->this$0:Lcom/emi/samradar/SecondFragment;

    iput-object p2, p0, Lcom/emi/samradar/SecondFragment$1;->val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/emi/samradar/SecondFragment$1;->val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->stopRippleAnimation()V

    .line 40
    iget-object v0, p0, Lcom/emi/samradar/SecondFragment$1;->this$0:Lcom/emi/samradar/SecondFragment;

    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 41
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 42
    return-void
.end method
